import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/widgets/custom_button.dart';
import 'package:t_client/core/widgets/custom_textfield.dart';
import 'package:t_client/features/package/presentation/ui/package/widgets/app_bar.dart';
import 'package:t_client/features/user/presentation/cubit/credential/cubit/auth_cubit.dart';

///
class ForgotPasswordScreen extends StatefulWidget {
  ///
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  ///
  String email = '';
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password ?'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            VerticalGap.exl,
            const Text(
              'Please enter your vaild email we will send you a password reset link',
              textAlign: TextAlign.center,
            ),
            VerticalGap.l,
            CustomTextField(
              hintText: 'Enter your valid email',
              controller: controller,
              onChanged: (value) {
                email = value;
                setState(() {});
              },
            ),
            VerticalGap.l,
            CustomElevatedButton(
              onButtonPressed: () async {
                if (email.isNotEmpty) {
                  await context.read<AuthCubit>().forgotPassword(email: email);
                  context
                    ..showSnackBar(
                      message: 'Check your email for reset link',
                      toastType: ToastType.message,
                    )
                    ..pop();
                  return;
                } else {
                  context.showSnackBar(
                    message: 'Please enter your email',
                    toastType: ToastType.message,
                  );
                  return;
                }
              },
              buttonText: 'Proceed',
              // isLoading: true,
            )
          ],
        ),
      ),
    );
  }
}
