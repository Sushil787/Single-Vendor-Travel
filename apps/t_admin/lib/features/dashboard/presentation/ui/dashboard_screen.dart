import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_admin/features/chat/presentation/cubit/user/user_cubit.dart';
import 'package:t_admin/features/dashboard/presentation/ui/widgets/growth_card.dart';
import 'package:t_admin/features/order/presentation/bloc/booking_bloc.dart';
import 'package:t_admin/features/package/presentation/bloc/travel_bloc.dart';

/// Dashboard Screen
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _fetchData() async {
    try {
      await context.read<UserCubit>().getAllUser();
      if (mounted) {
        context.read<TravelBloc>().add(const TravelEvent.get());
        context.read<BookingBloc>().add(const BookingEvent.getBookedPackage());
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: _isLoading
          ? const CircularProgressIndicator() // Show loading indicator
          : GridView.extent(
              maxCrossAxisExtent: 330,
              crossAxisSpacing: 20,
              mainAxisSpacing: 30,
              childAspectRatio: 1.8,
              shrinkWrap: true,
              children: [
                GrowthCard(
                  lable: 'Users',
                  number: context.read<UserCubit>().numberOfUser.toString(),
                ),
                GrowthCard(
                  lable: 'Total Packages',
                  number: context.read<TravelBloc>().totalPackages.toString(),
                ),
                GrowthCard(
                  lable: 'Total Booking',
                  number: context.read<BookingBloc>().totalBooking.toString(),
                ),
                GrowthCard(
                  lable: 'Total Earning ',
                  number:
                      'रु ${context.read<UserCubit>().numberOfUser + 100000}',
                ),
              ],
            ),
    );
  }
}
