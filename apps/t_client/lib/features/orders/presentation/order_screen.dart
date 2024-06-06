// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/core/widgets/custom_button.dart';
import 'package:t_client/features/orders/data/model/order_package_model.dart';
import 'package:t_client/features/orders/presentation/bloc/order_bloc.dart';

// Order Screen
class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  void initState() {
    super.initState();
    context.read<OrderBloc>().add(const GetOrders());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: Text(
          'Orders',
          style: context.textTheme.headlineLarge?.copyWith(
            fontSize: 26,
            color: LightColor.textColor,
            fontWeight: FontWeight.w800,
            height: 1,
          ),
        ),
      ),
      body: BlocBuilder<OrderBloc, OrderState>(
        builder: (context, state) {
          if (state is Loading) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
          if (state is Orders) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: state.orders.isEmpty
                  ? Center(
                      child: Text(
                        'No Orders yet',
                        style: context.textTheme.headlineSmall,
                      ),
                    )
                  : ListView.builder(
                      itemCount: state.orders.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final order = state.orders[index];
                        return buildOrderWidget(context, order: order);
                      },
                    ),
            );
          }
          return Center(
            child: Text(
              'Something went wrong',
              style: context.textTheme.headlineSmall,
            ),
          );
        },
      ),
    );
  }
}

Widget buildOrderWidget(
  BuildContext context, {
  required OrderPackageModel order,
}) {
  return Container(
    margin: const EdgeInsets.only(
      bottom: 8,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        width: .5,
        color: LightColor.whiteSmokeLight,
      ),
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
                order.packageName ?? '',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: LightColor.grey,
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            HorizontalGap.m,
            Chip(
              padding: const EdgeInsets.all(6),
              label: Text(
                order.orderStatus ?? '',
                style: context.textTheme.displayMedium
                    ?.copyWith(color: Colors.white),
              ),
              backgroundColor: order.orderStatus == 'pending'
                  ? Colors.blue.shade800
                  : order.orderStatus == 'confirmed'
                      ? Colors.green.shade800
                      : Colors.red.shade800,
            ),
          ],
        ),
        buildRow(
          context,
          first: 'From: ${order.from}',
          second: 'To: ${order.to}',
        ),
        buildRow(
          context,
          first: 'No of person: ${order.totalPerson}',
          second: 'Amount:  रु ${order.totalAmount}',
        ),
        buildRow(
          context,
          first: 'Total days: ${order.totalDays}',
          second: 'Payment: ${order.paymentStatus}',
        ),
        buildRow(
          context,
          first: 'Pick location: ${order.pickupLocation}',
          second: 'Name: ${order.name}',
        ),
        buildRow(
          context,
          first: 'Order Id: ${order.orderId}',
          second: ' ',
        ),
        if (!order.orderStatus!.toLowerCase().contains('can'))
          cancleRequestButton(context, order),
      ],
    ),
  );
}

/// Cancle request Button
CustomElevatedButton cancleRequestButton(
  BuildContext context,
  OrderPackageModel order,
) {
  return CustomElevatedButton(
    onButtonPressed: () async {
      await showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              padding: const EdgeInsets.all(8),
              height: context.height * .2,
              child: Column(
                children: [
                  const Text(
                    'Cancle Travel Package',
                  ),
                  VerticalGap.s,
                  Text(
                    '''
Note, after cancelation of the travel package you will be refunded after deductiing 4% of your order cost''',
                    style: context.textTheme.bodySmall?.copyWith(fontSize: 12),
                  ),
                  VerticalGap.m,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomElevatedButton(
                        onButtonPressed: () {
                          context.pop();
                        },
                        buttonText: 'close',
                        btnFontSize: 12,
                        backgroundColor: Colors.green.shade800,
                      ),
                      CustomElevatedButton(
                        backgroundColor: Colors.red.shade800,
                        onButtonPressed: () {
                          context.read<OrderBloc>().add(
                                OrderEvent.updateOrder(
                                  status: 'Cancle Request',
                                  orderPackageModel: order,
                                ),
                              );
                          context
                            ..showSnackBar(
                              message: 'Order Cancle Request Sent',
                              toastType: ToastType.message,
                            )
                            ..pop();
                        },
                        buttonText: 'Cancle Package',
                        btnFontSize: 12,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
    btnFontSize: 12,
    buttonText: 'Request cancle',
  );
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
            fontSize: 15,
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
          fontSize: 15,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    ],
  );
}
