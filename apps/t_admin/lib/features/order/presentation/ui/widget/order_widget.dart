import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/core/theme/app_colors.dart';
import 'package:t_admin/features/order/data/model/order_package_model.dart';
import 'package:t_admin/features/order/presentation/bloc/booking_bloc.dart';
import 'package:t_admin/features/product/presentation/ui/widget/product_widget.dart';

class OrderWidget extends StatefulWidget {
  const OrderWidget({required this.order, super.key});
  final OrderPackageModel order;

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  List<String> orderStatus = [
    'pending',
    'confirmed',
    'canceled/refunded',
    'Cancle Request',
  ];
  String dropDownValue = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * .4,
      // margin: const EdgeInsets.only(bottom: 10),
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
        // margin: const EdgeInsets.only(
        //   bottom: 8,
        // ),
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
                        fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                HorizontalGap.m,
                IgnorePointer(
                  ignoring: widget.order.orderStatus == 'canceled/refunded',
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
            if (widget.order.productModel != null)
              InkWell(
                  onTap: () async {
                    await showDialog<String>(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          scrollable: true,
                          surfaceTintColor: Colors.white,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 4),
                          content: SizedBox(
                            height: context.height * .4,
                            width: context.width * 0.3, //

                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ...widget.order.productModel!.map(
                                    (e) => Container(
                                      color: Colors.white,
                                      width: context.width * .3,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(12)),
                                            child: Container(
                                              height: context.height * .2,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                    e.image,
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          VerticalGap.s,
                                          Text('Rs. ${e.price}'),
                                          VerticalGap.s,
                                          Text(e.title),
                                          VerticalGap.s,
                                          Text(e.description)
                                        ],
                                      ),
                                    ),
                                  )
                                  // Add more containers if needed
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );

                    // await showDialog<String>(
                    //   context: context,
                    //   builder: (context) {
                    //     return Container(
                    //       margin: EdgeInsets.symmetric(
                    //         horizontal: context.width * .3,
                    //         vertical: context.height * .3,
                    //       ),
                    //       child: ListView(
                    //         shrinkWrap: true,
                    //         padding: EdgeInsets.zero,
                    //         physics: const BouncingScrollPhysics(),
                    //         scrollDirection: Axis.horizontal,
                    //         children: [
                    //           Container(
                    //             height: 100,
                    //             width: 200,
                    //             color: Colors.red,
                    //           ),
                    //           Container(
                    //             height: 100,
                    //             width: 200,
                    //             color: Colors.red,
                    //           )

                    //           // ...widget.order.productModel!.map(
                    //           //   (e) => Container(
                    //           //     color: Colors.white,
                    //           //     margin: const EdgeInsets.symmetric(
                    //           //       horizontal: 8,
                    //           //     ),
                    //           //     padding: const EdgeInsets.all(4),
                    //           //     width: context.width * .3,
                    //           //     height: context.height * .1,
                    //           //     child: Column(
                    //           //       crossAxisAlignment:
                    //           //           CrossAxisAlignment.start,
                    //           //       mainAxisSize: MainAxisSize.min,
                    //           //       children: [
                    //           //         ClipRRect(
                    //           //           borderRadius: const BorderRadius.only(
                    //           //             bottomLeft: Radius.circular(12),
                    //           //             bottomRight: Radius.circular(12),
                    //           //           ),
                    //           //           child: Container(
                    //           //             height: context.height * .2,
                    //           //             decoration: BoxDecoration(
                    //           //               image: DecorationImage(
                    //           //                 image: NetworkImage(
                    //           //                   e.image,
                    //           //                 ),
                    //           //                 fit: BoxFit.cover,
                    //           //               ),
                    //           //             ),
                    //           //           ),
                    //           //         ),
                    //           //         VerticalGap.s,
                    //           //         Text('Rs. ${e.price}'),
                    //           //         VerticalGap.s,
                    //           //         Text(e.title),
                    //           //         VerticalGap.s,
                    //           //         Text(e.description)
                    //           //       ],
                    //           //     ),
                    //           //   ),
                    //           // ),
                    //         ],
                    //       ),
                    //     );
                    // },
                    // );
                  },
                  child: const Text('product ordered'))
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
