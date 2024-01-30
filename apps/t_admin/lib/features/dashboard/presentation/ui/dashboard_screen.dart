import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_admin/features/chat/presentation/cubit/user/user_cubit.dart';

import 'package:t_admin/features/dashboard/presentation/ui/widgets/growth_card.dart';

/// Dashboard Screen
class DashboardScreen extends StatefulWidget {
  ///
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timestamp) async {
      if (mounted) {
        await context.read<UserCubit>().getAllUser();
        setState(() {});
      }
    });
  }
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: GridView.extent(
        maxCrossAxisExtent: 330,
        crossAxisSpacing: 20,
        mainAxisSpacing: 30,
        // padding: const EdgeInsets.all(80),
        childAspectRatio: 1.8,
        shrinkWrap: true,
        children: [
          GrowthCard(
            lable: 'Users',
            number: context.read<UserCubit>().numberOfUser.toString(),
          ),
          GrowthCard(
            lable: 'Total Packages',
            number: context.read<UserCubit>().numberOfUser.toString(),
          ),
          GrowthCard(
            lable: 'Total Booking',
            number: context.read<UserCubit>().numberOfUser.toString(),
          ),
          GrowthCard(
            lable: 'Total Earning ',
            number: 'रु ${context.read<UserCubit>().numberOfUser}',
          )
        ],
        // children: [...List.generate(6, (index) => const GrowthCard())],
      ),
    );
  }
}
