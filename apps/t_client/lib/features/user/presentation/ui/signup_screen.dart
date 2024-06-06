import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:t_client/core/constants/route_constants.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/widgets/custom_button.dart';
import 'package:t_client/core/widgets/custom_textfield.dart';
import 'package:t_client/features/user/domain/entities/user_entity.dart';
import 'package:t_client/features/user/presentation/cubit/credential/cubit/auth_cubit.dart';

/// Login Page

class SignUpScreen extends StatefulWidget {
  ///
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  /// user Email
  String? email;

  /// Username
  String? username;

  /// User Password
  String? password;

  /// Confirm Password
  String? confirmPassword;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is AuthFailure) {
                  context.showSnackBar(
                    message: state.message.replaceAll('-', ' '),
                    toastType: ToastType.error,
                  );
                }
                if (state is SignupSuccess) {
                  context
                    ..showSnackBar(
                      message: 'Signup successful',
                      toastType: ToastType.success,
                    )
                    ..go(AppRoutes.home);
                }
              },
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('SignUp', style: context.textTheme.headlineLarge),
                    VerticalGap.s,
                    Divider(
                      thickness: 2,
                      color: context.secondary,
                    ),
                    VerticalGap.xl,
                    form(context),
                    VerticalGap.exl,
                    CustomElevatedButton(
                      onButtonPressed: () async {
                        debugPrint(formKey.currentState!.validate().toString());
                        if (formKey.currentState!.validate()) {
                          await context.read<AuthCubit>().signUp(
                                user: UserEntity(
                                  uname: username,
                                  password: password,
                                  email: email,
                                ),
                              );
                        }
                      },
                      isLoading: state is AuthLoading,
                      buttonText: 'Register',
                    ),
                    VerticalGap.m,
                    VerticalGap.l,
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Sign up Form
  Form form(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextField(
            controller: TextEditingController(),
            prefixIcon: Icons.person,
            hintText: 'username',
            onChanged: (value) {
              username = value;
            },
            validator: (value) {
              if (value != null && value.isEmpty) {
                return 'please enter your username';
              }
              return null;
            },
          ),
          VerticalGap.l,
          CustomTextField(
            prefixIcon: Icons.email,
            hintText: 'email',
            onChanged: (value) {
              email = value;
            },
            validator: (value) {
              if (value != null && value.isEmpty) {
                return 'please enter your email';
              }

              return null;
            },
          ),
          VerticalGap.l,
          dividerWidget(context),
          VerticalGap.l,
          CustomTextField(
            prefixIcon: Icons.password,
            maxLine: 1,
            hintText: 'password',
            onChanged: (value) {
              password = value;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'please enter your password';
              }
              return null;
            },
            isPassword: true,
          ),
          VerticalGap.l,
          CustomTextField(
            prefixIcon: Icons.password,
            maxLine: 1,
            hintText: 'confirm password',
            onChanged: (value) {
              confirmPassword = value;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'please enter confirm password';
              } else if (password != confirmPassword) {
                return "confirm password didn't matched";
              }
              return null;
            },
            isPassword: true,
          ),
        ],
      ),
    );
  }

  Divider dividerWidget(BuildContext context) {
    return Divider(
      thickness: 2,
      color: context.secondary,
      indent: context.width * .2,
      endIndent: context.width * .2,
    );
  }
}
