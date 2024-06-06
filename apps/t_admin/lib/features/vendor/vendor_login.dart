import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/core/widgets/custom_button.dart';
import 'package:t_admin/core/widgets/custom_textfield.dart';
import 'package:t_admin/di/di_setup.dart';
import 'package:t_admin/features/user/presentation/cubit/credential/auth_cubit.dart';
import 'package:t_admin/features/vendor/repo/vendor_repo.dart';

/// Login Page
class VendorLogin extends StatefulWidget {
  ///
  const VendorLogin({super.key});

  @override
  State<VendorLogin> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<VendorLogin> {
  /// user Email
  String? email;

  /// user Password
  String? password;

  final auth = getIt<VendorRepo>();

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
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Vendor  Login', style: context.textTheme.headlineLarge),
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
                        // SizedBox(
                        //   width: context.width*.10,

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
                        // ),
                        VerticalGap.l,
                        CustomTextField( 
                          prefixIcon: Icons.password,
                          
                          hintText: ' Password',
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
                  VerticalGap.xxxl,
                ValueListenableBuilder(valueListenable:isLoading , builder: (context, isLoading, child){
                  return   CustomElevatedButton(
                    isLoading: isLoading,
                    onButtonPressed: () async{
                      if (formKey.currentState!.validate()) {
                        
                       await auth.login(context, email: email??'', password: password??'');
                      }
                    },
                    buttonText: 'Login',
                  );
                }),
                  VerticalGap.xxxl,
               
                ],
              ),
        ),
      ),
    );
  }
}
