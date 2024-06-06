import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_admin/core/widgets/custom_lable.dart';
import 'package:t_admin/features/order/presentation/bloc/booking_bloc.dart';
import 'package:t_admin/features/order/presentation/ui/widget/order_widget.dart';

class PackageBookedScreen extends StatefulWidget {
  ///
  const PackageBookedScreen({super.key});

  @override
  State<PackageBookedScreen> createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageBookedScreen> {
  @override
  void initState() {
    super.initState();
    context.read<BookingBloc>().add(const BookingEvent.getBookedPackage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
              child: CustomLable(
                lable: 'Bookings',
              ),
            ),
            Flexible(
              child: BlocBuilder<BookingBloc, BookingState>(
                builder: (context, state) {
                  if (state is BookingLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  if (state is BookingLoaded) {
                    if (state.orders.isNotEmpty) {
                      return GridView.builder(
                        shrinkWrap: true,
                        itemCount: state.orders.length,
                        itemBuilder: (context, index) {
                          return OrderWidget(
                            order: state.orders[index],
                          );
                        },
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 182,
                          crossAxisSpacing: 8,
                        ),
                      );
                    }
                    return const Center(
                      child: Text('No Bookings yet'),
                    );
                  }
                  if (state is Error) {
                    return Center(
                      child: Text(state.message),
                    );
                  }
                  return const Center(
                    child: Text('Error fetching data try later'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
