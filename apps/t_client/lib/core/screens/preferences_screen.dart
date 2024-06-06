import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:t_client/core/constants/route_constants.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/core/widgets/custom_button.dart';
import 'package:t_client/di/di_setup.dart';
import 'package:t_client/features/user/domain/repository/user_repository.dart';

/// Get User Preferences If first time Visit
class UserPreferencesScreen extends StatefulWidget {
  ///
  const UserPreferencesScreen({super.key});

  @override
  State<UserPreferencesScreen> createState() => _UserPreferencesScreenState();
}

class _UserPreferencesScreenState extends State<UserPreferencesScreen> {
  final SharedPreferences userFirstTime = getIt<SharedPreferences>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        await userFirstTime.setBool('firstTime', false);
      },
    );
  }

  List<String> favourites = [];
  List<String> items = [
    'Holiday',
    'Homestay',
    'Honeymoon',
    'Nature',
    'Religious',
    'Fun',
    'Travel',
    'Hotel',
    'Educational',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          VerticalGap.exl,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              'What are your interest ?',
              style: context.textTheme.bodyLarge?.copyWith(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: LightColor.eclipse,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      child: Material(
                        borderRadius: BorderRadius.circular(8),
                        elevation: favourites.contains(items[index]) ? 10 : 0,
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(
                              color: LightColor.eclipse,
                            ),
                          ),
                          selectedTileColor: LightColor.orange,
                          selected: favourites.contains(items[index]),
                          title: Text(
                            items[index],
                            style: context.textTheme.bodyLarge?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: LightColor.eclipse,
                            ),
                          ),
                          onTap: () {
                            if (favourites.contains(items[index])) {
                              favourites.remove(items[index]);
                              setState(() {});
                              return;
                            }
                            favourites.add(items[index]);
                            setState(() {});
                            return;
                          },
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(12),
        child: CustomElevatedButton(
          onButtonPressed: () async {
            if (favourites.length > 4) {
              // ignore: avoid_function_literals_in_foreach_calls
              favourites.forEach((element) async {
                await context.read<UserRepository>().addSearchHistory(
                      searchQuery: element,
                    );
              });
              await context.push(AppRoutes.main);
              return;
            }
            context.showSnackBar(
              message: 'please select atleast 5 items',
              toastType: ToastType.message,
            );
          },
          buttonText: 'Next',
        ),
      ),
    );
  }
}
