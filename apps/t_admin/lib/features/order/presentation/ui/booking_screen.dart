import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/core/theme/app_colors.dart';
import 'package:t_admin/core/widgets/custom_lable.dart';
import 'package:t_admin/features/order/data/model/order_package_model.dart';
import 'package:t_admin/features/order/presentation/bloc/booking_bloc.dart';

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
                lable: 'Orders',
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

class OrderWidget extends StatefulWidget {
  const OrderWidget({required this.order, super.key});
  final OrderPackageModel order;

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  List<String> orderStatus = ['pending', 'confirmed', 'rejected'];
  String dropDownValue = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * .4,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: LightColor.whiteSmokeLight,
          width: 0.5,
        ),
      ),
      child: Container(
        width: context.width * .4,
        margin: const EdgeInsets.only(
          bottom: 8,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 6,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    widget.order.packageName ?? '',
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: LightColor.grey,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                HorizontalGap.m,
                IgnorePointer(
                  ignoring: widget.order.orderStatus != 'pending',
                  child: DropdownMenu<String>(
                    textStyle: context.textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                    inputDecorationTheme: InputDecorationTheme(
                      filled: true,
                      labelStyle: context.textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                      ),
                      suffixIconColor: Colors.white,
                      fillColor: widget.order.orderStatus == 'pending'
                          ? Colors.blue.shade800
                          : widget.order.orderStatus == 'confirmed'
                              ? Colors.green.shade800
                              : Colors.red.shade800,
                    ),
                    initialSelection: widget.order.orderStatus,
                    onSelected: (String? value) {
                      dropDownValue = value!;
                      context.read<BookingBloc>().add(
                            BookingEvent.updateOrder(
                              context: context,
                              orderPackageModel: widget.order,
                              status: value,
                            ),
                          );
                      setState(() {});

                      return;
                    },
                    dropdownMenuEntries: orderStatus
                        .map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(
                        style: ButtonStyle(
                          textStyle: MaterialStatePropertyAll(
                            context.textTheme.bodyMedium?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        value: value,
                        label: value,
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            VerticalGap.m,
            buildRow(
              context,
              first: 'From: ${widget.order.from}',
              second: 'To: ${widget.order.to}',
            ),
            buildRow(
              context,
              first: 'No of person: ${widget.order.totalPerson}',
              second: 'Amount: रु  ${widget.order.totalAmount}',
            ),
            buildRow(
              context,
              first: 'Total days: ${widget.order.totalDays}',
              second: 'Payment: ${widget.order.paymentStatus}',
            ),
            buildRow(
              context,
              first: 'Pick location: ${widget.order.pickupLocation}',
              second: 'Name: ${widget.order.name}',
            ),
            buildRow(
              context,
              first: 'Order Id: ${widget.order.orderId}',
              second: ' ',
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildRow(
  BuildContext context, {
  required String first,
  required String second,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: Text(
          first,
          maxLines: 2,

          // 'Total days: ${order.totalDays}',
          style: context.textTheme.bodyMedium?.copyWith(
            color: LightColor.grey,
            fontWeight: FontWeight.w300,
            fontSize: 12,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      HorizontalGap.m,
      Text(
        second,
        style: context.textTheme.bodyMedium?.copyWith(
          color: LightColor.grey,
          fontWeight: FontWeight.w300,
          fontSize: 12,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    ],
  );
}
