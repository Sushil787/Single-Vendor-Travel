import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/screens/preferences_screen.dart';
import 'package:t_client/di/di_setup.dart';
import 'package:t_client/features/package/presentation/ui/home/home_screen.dart';
import 'package:t_client/features/user/presentation/cubit/credential/cubit/auth_cubit.dart';
import 'package:t_client/features/user/presentation/ui/login_screen.dart';

/// MainScreen
class MainScreen extends StatefulWidget {
  ///
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  SharedPreferences getPreferences = getIt<SharedPreferences>();
  late bool isFirstTime;
  @override
  void initState() {
    isFirstTime = getPreferences.getBool('firstTime') ?? true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthFailure) {
          context.showSnackBar(
            message: state.message,
            toastType: ToastType.error,
          );
        }
      },
      builder: (context, AuthState state) {
        if (state is Authenticated) {
          if (isFirstTime) {
            return const UserPreferencesScreen();
          } else {
            return HomeScreen(uid: state.uid);
          }
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}
