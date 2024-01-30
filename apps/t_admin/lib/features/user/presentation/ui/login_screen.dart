import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/core/widgets/custom_button.dart';
import 'package:t_admin/core/widgets/custom_textfield.dart';
import 'package:t_admin/features/user/presentation/cubit/credential/auth_cubit.dart';

/// Login Page
class LoginScreen extends StatefulWidget {
  ///
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  /// user Email
  String? email;

  /// user Password
  String? password;

  /// Form Key
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.width * .3,
            vertical: context.height * .2,
          ),
          child: BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('login', style: context.textTheme.headlineLarge),
                  VerticalGap.s,
                  Divider(
                    thickness: 2,
                    color: context.secondary,
                  ),
                  VerticalGap.xl,
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          prefixIcon: Icons.email,
                          hintText: 'Email',
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
                        CustomTextField(
                          prefixIcon: Icons.password,
                          hintText: 'password',
                          onChanged: (value) {
                            password = value;
                          },
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return 'please enter your password';
                            }
                            return null;
                          },
                          isPassword: true,
                          maxLine: 1,
                        ),
                      
                      ],
                    ),
                  ),
                  VerticalGap.exl,
                  CustomElevatedButton(
                    isLoading: state is AuthLoading,
                    onButtonPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.read<AuthCubit>().signIn(
                              email: email!,
                              password: password!,
                            );
                      }
                    },
                    buttonText: 'login',
                  ),
                  VerticalGap.l,
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
