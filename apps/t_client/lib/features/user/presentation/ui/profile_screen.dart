import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:t_client/core/constants/route_constants.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/core/widgets/custom_button.dart';
import 'package:t_client/core/widgets/custom_textfield.dart';
import 'package:t_client/features/user/domain/entities/user_entity.dart';
import 'package:t_client/features/user/presentation/cubit/credential/cubit/auth_cubit.dart';
import 'package:t_client/features/user/presentation/cubit/profile/cubit/profile_cubit.dart';
import 'package:t_client/features/user/presentation/cubit/profile/cubit/update_profile_cubit.dart';

/// Profile Screen
class ProfileScreen extends StatefulWidget {
  /// Public Constructor
  const ProfileScreen({
    required this.uid,
    super.key,
  });

  /// User ID
  final String uid;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<ProfileCubit>().getProfile(uid: widget.uid);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.6,
        centerTitle: true,
        title: Text(
          'Profile',
          style: context.textTheme.headlineLarge?.copyWith(
            fontSize: 22,
            color: LightColor.eclipse,
            height: 1,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: SingleChildScrollView(
          child: Center(
            child: BlocConsumer<ProfileCubit, ProfileState>(
              listener: (context, state) {
                if (state is ProfileFailure) {
                  context.showSnackBar(
                    message: state.message,
                    toastType: ToastType.error,
                  );
                }
                if (state is AccDeleteSuccess) {
                  context.showSnackBar(
                    message: state.message,
                    toastType: ToastType.error,
                  );
                }
              },
              builder: (context, state) {
                if (state is ProfileLoading) {
                  return const CircularProgressIndicator();
                }
                if (state is ProfileLoaded) {
                  return BuildProfileDetail(
                    user: state.currentUser,
                  );
                }
                return const Text('Error Loading Data');
              },
            ),
          ),
        ),
      ),
    );
  }
}

/// Build Profile Detail Widget
class BuildProfileDetail extends StatefulWidget {
  ///
  const BuildProfileDetail({
    required this.user,
    super.key,
  });

  /// User Entity
  final UserEntity user;

  @override
  State<BuildProfileDetail> createState() => _BuildProfileDetailState();
}

class _BuildProfileDetailState extends State<BuildProfileDetail> {
  File? profileImage;

  String uname = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: context.height * .4,
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              VerticalGap.s,
              SizedBox(
                width: context.width * .2,
                child: Stack(
                  fit: StackFit.passthrough,
                  children: [
                    CircleAvatar(
                      radius: 44,
                      backgroundColor: context.secondary,
                      child: profileImage != null
                          ? CircleAvatar(
                              radius: 40,
                              backgroundColor: context.primary,
                              backgroundImage: FileImage(profileImage!),
                            )
                          : widget.user.profileUrl != null
                              ? CircleAvatar(
                                  radius: 40,
                                  backgroundColor: context.primary,
                                  backgroundImage:
                                      NetworkImage(widget.user.profileUrl!),
                                )
                              : CircleAvatar(
                                  backgroundColor: context.primary,
                                  child: Text(
                                    widget.user.uname![0],
                                    style: context.textTheme.headlineLarge,
                                  ),
                                ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () async {
                          final file = await ImagePicker.platform
                              .pickImage(source: ImageSource.gallery);

                          if (file != null) {
                            profileImage = File(file.path);
                            setState(() {});
                          }
                        },
                        child: const CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.edit,
                            color: LightColor.eclipse,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              VerticalGap.exl,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'uname',
                  style: context.textTheme.bodySmall,
                ),
              ),
              CustomTextField(
                hintText: widget.user.uname!,
                onChanged: (value) {
                  uname = value;
                },
              ),
              VerticalGap.s,
              customText(
                type: 'uid',
                text: widget.user.uid!,
                context: context,
              ),
              VerticalGap.s,
              customText(
                type: 'email',
                text: widget.user.email!,
                context: context,
              ),
            ],
          ),
        ),
        CustomElevatedButton(
          onButtonPressed: () async {
            await context.read<AuthCubit>().signOut();
            if (context.mounted) {
              context.go(AppRoutes.main);
            }
          },
          buttonText: 'signout',
        ),
        VerticalGap.m,
        BlocConsumer<UpdateProfileCubit, UpdateProfileState>(
          listener: (context, state) {
            if (state is UpdateSuccess) {
              context.read<ProfileCubit>().getProfile(uid: widget.user.uid!);
              context.showSnackBar(
                message: 'Profile Updated Successfully',
                toastType: ToastType.success,
              );
            }
            if (state is UpdateError) {
              context.showSnackBar(
                message: state.message,
                toastType: ToastType.error,
              );
            }
          },
          builder: (context, state) => CustomElevatedButton(
            isLoading: state is UpdateLoading,
            onButtonPressed: () async {
              if (profileImage == null && uname.isEmpty) {
                context.showSnackBar(
                  message: 'Please update something',
                  toastType: ToastType.message,
                );
              } else {
                await context
                    .read<UpdateProfileCubit>()
                    .updateProfile(uname: uname, image: profileImage);
              }
            },
            buttonText: 'Update Profile',
          ),
        ),
      ],
    );
  }
}

/// Custom Underlined text
Widget customText({
  required String type,
  required String text,
  required BuildContext context,
}) {
  return SizedBox(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          type,
          style: context.textTheme.bodySmall,
        ),
        Container(
          width: context.width,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: context.primary),
            ),
          ),
          child: Text(text),
        ),
      ],
    ),
  );
}
