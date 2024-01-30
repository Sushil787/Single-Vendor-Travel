import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:t_client/core/assets/media_assets.dart';
import 'package:t_client/core/constants/route_constants.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/widgets/custom_button.dart';
import 'package:t_client/core/widgets/custom_textfield.dart';
import 'package:t_client/features/user/presentation/cubit/credential/cubit/auth_cubit.dart';

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
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: context.height * .3,
                    child: Image.asset(MediaAsset.logo),
                  ),
                  Text(
                    'Welcome Back',
                    style: context.textTheme.headlineLarge,
                  ),
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
                          maxLine: 1,

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
                        ),
                      ],
                    ),
                  ),
                  VerticalGap.exl,
                  CustomElevatedButton(
                    isLoading: state is AuthLoading,
                    onButtonPressed: () async {
                      if (formKey.currentState!.validate()) {
                        await context.read<AuthCubit>().signIn(
                              email: email!,
                              password: password!,
                            );
                      }
                    },
                    buttonText: 'login',
                  ),
                  VerticalGap.m,
                  const RegisterText(),
                  VerticalGap.l,
                  const GoogleSigninButton(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

///Google Sign in
class GoogleSigninButton extends StatelessWidget {
  ///
  const GoogleSigninButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * .07,
      child: Card(
        child: Align(
          child: GestureDetector(
            onTap: () {
              context.read<AuthCubit>().googleSignin();
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundColor: context.onPrimary,
                  radius: 22,
                  child: Image.asset(MediaAsset.googleImage),
                ),
                HorizontalGap.l,
                const Text('Signin with google'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Don't Have A/C register
class RegisterText extends StatelessWidget {
  ///
  const RegisterText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("don't have account "),
          SizedBox(
            width: 100,
            child: GestureDetector(
              onTap: () {
                context.push(AppRoutes.signup);
              },
              child: Text(
                'Register',
                style: context.textTheme.bodyMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
