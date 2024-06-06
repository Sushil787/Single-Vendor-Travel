import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:khalti_flutter/khalti_flutter.dart';
import 'package:screenshot/screenshot.dart';
import 'package:t_client/core/helper/dicount_price.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/routes/app_router.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/core/widgets/custom_button.dart';
import 'package:t_client/core/widgets/custom_dropdown.dart';
import 'package:t_client/core/widgets/custom_textfield.dart';
import 'package:t_client/core/widgets/ios_back_button.dart';
import 'package:t_client/features/orders/data/model/order_package_model.dart';
import 'package:t_client/features/orders/presentation/bloc/order_bloc.dart';
import 'package:t_client/features/orders/presentation/widgets/select_date.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/user/domain/repository/user_repository.dart';

/// Check out screen
class CheckoutScreen extends StatefulWidget {
  ///
  const CheckoutScreen({required this.travelPackageModel, super.key});

  /// [TravelPackageModel]
  final TravelPackageModel travelPackageModel;

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController peopleController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  ScreenshotController captureController = ScreenshotController();
  int noOfPeople = 0;

  String name = '';
  String from = '';
  double? totalCost;
  String to = '';
  int totalDays = 0;
  late String userId;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      userId = await context.read<UserRepository>().getCurrentUId();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    nameController.dispose();
    peopleController.dispose();
    phoneController.dispose();
    addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
      navigatorKey: AppRouter().router.routerDelegate.navigatorKey,
      publicKey: 'test_public_key_d5d9f63743584dc38753056b0cc737d5',
      builder: (context, key) => Scaffold(
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
          child: BlocConsumer<OrderBloc, OrderState>(
            listener: (context, state) {
              if (state is Ordered) {
                context.showSnackBar(
                  message: 'Ordered Places Successfully',
                  toastType: ToastType.success,
                );
              }
              if (state is Error) {
                context.showSnackBar(
                  message: state.message,
                  toastType: ToastType.error,
                );
                return;
              }
            },
            builder: (context, state) {
              return CustomElevatedButton(
                isLoading: state is Loading,
                btnFontSize: 16,
                onButtonPressed: () async {
                  if (formKey.currentState!.validate()) {
                    totalCost = noOfPeople *
                        discountedPrice(
                          widget.travelPackageModel.perHeadPerNight,
                          widget.travelPackageModel.discount,
                        ) *
                        totalDays;
                    final orderPackageModel = OrderPackageModel(
                      userId: userId,
                      orderStatus: 'pending',
                      orderId: '',
                      packageId: widget.travelPackageModel.uuid,
                      packageName: widget.travelPackageModel.packageName,
                      totalAmount: totalCost.toString(),
                      totalPerson: noOfPeople.toString(),
                      totalDays: totalDays,
                      name: name,
                      phone: phoneController.text,
                      from: from,
                      to: to,
                      pickupLocation: addressController.text,
                    );
                    log(totalCost.toString());
                    await KhaltiScope.of(context).pay(
                      config: PaymentConfig(
                        amount: int.parse(
                          double.parse((totalCost! * 100).toString())
                              .toStringAsFixed(0),
                        ),
                        productIdentity: orderPackageModel.packageId ?? '',
                        productName: orderPackageModel.packageName ?? '',
                        productUrl: 'https://www.google.com',
                      ),
                      onSuccess: (_) async {
                        context.read<OrderBloc>().add(
                              MakeOrder(orderPackageModel: orderPackageModel),
                            );
                      },
                      onFailure: (_) {
                        context.showSnackBar(
                          message: _.message,
                          toastType: ToastType.error,
                        );
                      },
                      onCancel: () {
                        context.showSnackBar(
                          message: 'Payment Canceled',
                          toastType: ToastType.error,
                        );
                      },
                    );
                    await Future.delayed(const Duration(seconds: 2), () {
                      nameController.dispose();
                      phoneController.dispose();
                      addressController.dispose();
                      peopleController.dispose();
                      context.pop();
                    });
                  }
                },
                buttonText: 'Confirm Order',
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
            child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      IosBackButton(
                        onTap: () {
                          context.pop();
                        },
                      ),
                      HorizontalGap.m,
                      Text(
                        widget.travelPackageModel.packageName,
                        style: context.textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  VerticalGap.l,
                  CustomTextField(
                    controller: nameController,
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                    hintText: 'Enter your name',
                    validationMessage: 'please enter your username',
                    // formKey: nameFormKey,
                  ),
                  VerticalGap.l,
                  CustomTextField(
                    controller: peopleController,
                    textInputType: TextInputType.number,
                    hintText: 'Enter number of person',
                    onChanged: (value) {
                      noOfPeople = int.parse(value);
                      totalCost = noOfPeople *
                          discountedPrice(
                            widget.travelPackageModel.perHeadPerNight,
                            widget.travelPackageModel.discount,
                          ) *
                          totalDays;
                      setState(() {});
                    },
                    validationMessage: 'Please enter number of person',
                    // formKey: numberKey,
                  ),
                  VerticalGap.l,
                  CustomTextField(
                    textInputType: TextInputType.number,
                    validationMessage: 'Enter valid phone number',
                    hintText: 'Enter valid phone number',
                    // formKey: phoneKey,
                    controller: phoneController,
                  ),
                  VerticalGap.l,
                  if (widget.travelPackageModel.pickupAddress.isNotEmpty)
                    CustomDropDownWidget(
                      items: widget.travelPackageModel.pickupAddress,
                      onSelect: (value) {
                        addressController.text = value;
                        debugPrint(addressController.text);
                      },
                    ),
                  if (widget.travelPackageModel.pickupAddress.isEmpty)
                    CustomTextField(
                      hintText: 'Enter pickup valid address',
                      validationMessage: 'Enter pickup address',
                      controller: addressController,
                    ),
                  VerticalGap.l,
                  SelectedDateWidget(
                    from: from,
                    to: to,
                    callBack: (x, y, z) {
                      setState(() {
                        from = x;
                        to = y;
                        totalDays = z;
                        totalCost = noOfPeople *
                            discountedPrice(
                              widget.travelPackageModel.perHeadPerNight,
                              widget.travelPackageModel.discount,
                            ) *
                            totalDays;
                      });
                    },
                  ),
                  VerticalGap.l,
                  receitCard(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Card receitCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Name '),
                Expanded(child: Text('.' * 100, maxLines: 1)),
                Text(name),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('From:  '),
                Text(from),
                const Expanded(child: SizedBox.shrink()),
                const Text('To:  '),
                Text(to),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('No of People:  '),
                Expanded(child: Text('.' * 100, maxLines: 1)),
                Text(noOfPeople.toString()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Actual price: '),
                Expanded(child: Text('.' * 100, maxLines: 1)),
                Text(
                  ' रु : ${widget.travelPackageModel.perHeadPerNight}',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Price per head'),
                Expanded(child: Text('.' * 100, maxLines: 1)),
                Text(
                  ' रु:${discountedPrice(
                    widget.travelPackageModel.perHeadPerNight,
                    widget.travelPackageModel.discount,
                  )}',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('discount'),
                Expanded(child: Text('.' * 100, maxLines: 1)),
                Text(
                  ' ${widget.travelPackageModel.discount} %',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('No of days'),
                Expanded(child: Text('.' * 100, maxLines: 1)),
                Text(
                  totalDays.toString(),
                ),
              ],
            ),
            const Divider(
              color: LightColor.eclipse,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('total amount:  '),
                Text('रु : ${totalCost ?? ''}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
