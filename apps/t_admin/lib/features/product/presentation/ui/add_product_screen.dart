import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:t_admin/core/enums/pakcage_enum.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/core/helper/image_to_unit8list.dart';
import 'package:t_admin/core/widgets/custom_button.dart';
import 'package:t_admin/core/widgets/custom_dropdown.dart';
import 'package:t_admin/core/widgets/custom_textfield.dart';
import 'package:t_admin/features/package/presentation/bloc/travel_bloc.dart';
import 'package:t_admin/features/package/presentation/widgets/image_picker_widget.dart';
import 'package:t_admin/features/product/model/product_model.dart';
import 'package:t_admin/features/product/presentation/cubit/product_cubit.dart';

/// Add Product Screen

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key, this.productModel});

  final ProductModel? productModel;

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final formKey = GlobalKey<FormState>();
  Uint8List? featuredImage;
  TextEditingController titleController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.productModel != null) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
        featuredImage = await getUnit8List(widget.productModel!.image);
        titleController.text = widget.productModel!.title;
        descriptionController.text = widget.productModel!.description;
        priceController.text = widget.productModel!.price;
        if (mounted) {
          setState(() {});
        }
      });
    }
  }

  // final TextEditingController categoryTypeController;
  String selectePackage = 'travel';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(16),
          width: context.width * .4,
          alignment: Alignment.center,
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Upload Product Image'),
                VerticalGap.s,
                ImagePickerWidget(
                  image: widget.productModel?.image,
                  imageCallBack: (file) {
                    if (file != null) {
                      featuredImage = file;
                    }
                  },
                ),
                VerticalGap.l,
                const Text('Enter Product Name'),
                VerticalGap.s,
                CustomTextField(
                  hintText: 'Hiking Shoe',
                  validationMessage: 'please enter product title',
                  maxLine: 3,
                  controller: titleController,
                ),
                VerticalGap.l,
                const Text('Enter Product Name'),
                VerticalGap.s,
                CustomTextField(
                  hintText: 'Very Good Hiking Shoe',
                  validationMessage: 'please enter product description',
                  maxLine: 3,
                  controller: descriptionController,
                ),
                VerticalGap.l,
                Row(
                  children: [
                    const Text('Select Package Type'),
                    HorizontalGap.s,
                    CustomDropDownWidget(
                      items: PackageEnum.values
                          .map((e) => e.toString().split('.').last)
                          .toList(),
                      onSelect: (value) {
                        selectePackage = value;
                      },
                    ),
                  ],
                ),
                VerticalGap.l,
                const Text('Price Product Price'),
                VerticalGap.s,
                CustomTextField(
                  controller: priceController,
                  hintText: 'Rs 1000',
                  validationMessage: 'please enter product price',
                ),
                VerticalGap.exl,
                BlocConsumer<ProductCubit, ProductState>(
                  listener: (context, state) {
                    if (state is ProductError) {
                      context.showSnackBar(
                        message: state.message,
                        toastType: ToastType.error,
                      );
                    }
                    if (state is ProductSuccess) {
                      context
                        ..showSnackBar(
                          message: state.succesMessage,
                          toastType: ToastType.success,
                        )
                        ..pop();
                    }
                  },
                  builder: (context, state) {
                    return CustomElevatedButton(
                      isLoading: state is ProductLoading,
                      onButtonPressed: () async {
                        if (formKey.currentState!.validate() &&
                            featuredImage != null &&
                            widget.productModel == null) {
                          await context.read<ProductCubit>().addProducts(
                                productModel: ProductModel(
                                  categoryType: selectePackage,
                                  image: '',
                                  price: priceController.text,
                                  description: descriptionController.text,
                                  title: titleController.text,
                                ),
                                image: featuredImage!,
                              );
                          return;
                        }
                        if (formKey.currentState!.validate() &&
                            featuredImage != null &&
                            widget.productModel != null) {
                          await context.read<ProductCubit>().updateProduct(
                                productModel: ProductModel(
                                  uuid: widget.productModel!.uuid,
                                  categoryType: selectePackage,
                                  image: '',
                                  price: priceController.text,
                                  description: descriptionController.text,
                                  title: titleController.text,
                                ),
                                image: featuredImage!,
                              );
                          return;
                        }
                        context.showSnackBar(
                          message: 'Please fill all field',
                          toastType: ToastType.message,
                        );
                      },
                      buttonText: widget.productModel != null
                          ? 'Update Product'
                          : 'Upload Product',
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
