import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:t_admin/core/enums/pakcage_enum.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/core/helper/image_to_unit8list.dart';
import 'package:t_admin/core/theme/app_colors.dart';
import 'package:t_admin/core/widgets/custom_button.dart';
import 'package:t_admin/core/widgets/custom_dropdown.dart';
import 'package:t_admin/core/widgets/custom_textfield.dart';
import 'package:t_admin/features/package/data/model/travel_package_model.dart';
import 'package:t_admin/features/package/presentation/bloc/travel_bloc.dart';
import 'package:t_admin/features/package/presentation/widgets/image_picker_widget.dart';
import 'package:uuid/uuid.dart';

class AddPackageScreen extends StatefulWidget {
  const AddPackageScreen({
    this.travelPackageModel,
    super.key,
    this.createMode = true,
  });

  /// edit mode
  final bool? createMode;

  /// NoteModel
  final TravelPackageModel? travelPackageModel;

  @override
  State<AddPackageScreen> createState() => _AddPackageScreenState();
}

class _AddPackageScreenState extends State<AddPackageScreen> {
  final formKey = GlobalKey<FormState>();
  bool isFeatured = false;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController latitudeController = TextEditingController();
  final TextEditingController longitudeController = TextEditingController();
  final TextEditingController packageTypeController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController discountController = TextEditingController();
  final TextEditingController higlghtsController = TextEditingController();
  final TextEditingController pickupAddressController = TextEditingController();
  final TextEditingController iclusiveController = TextEditingController();

  String selectePackage = 'travel';
  Uint8List? featuredImage;
  List<Uint8List> images = [];
  List<String> inclusive = [];
  List<String> higlights = [];
  List<String> pickUpAddress = [];

  Uint8List? vrImage;
  bool? editMode;

  @override
  void initState() {
    super.initState();
    editMode = widget.createMode;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await mode();
    });
  }

  /// Initializer for edit mode
  Future<void> mode() async {
    if (!widget.createMode!) {
      nameController.text = widget.travelPackageModel?.packageName ?? '';
      locationController.text = widget.travelPackageModel?.location ?? '';
      latitudeController.text =
          widget.travelPackageModel?.latitude.toString() ?? '';
      longitudeController.text =
          widget.travelPackageModel?.longitude.toString() ?? '';
      packageTypeController.text = widget.travelPackageModel?.packageType ?? '';
      descriptionController.text = widget.travelPackageModel?.description ?? '';
      priceController.text =
          widget.travelPackageModel?.perHeadPerNight.toString() ?? '';
      discountController.text =
          widget.travelPackageModel?.discount.toString() ?? '';
      higlights.addAll(widget.travelPackageModel!.highlights);
      inclusive.addAll(widget.travelPackageModel!.inclusive);
      isFeatured = widget.travelPackageModel?.isFeatured ?? false;
      pickUpAddress.addAll(widget.travelPackageModel!.pickupAddress);
      featuredImage =
          await getUnit8List(widget.travelPackageModel!.featuredImage);
      vrImage = await getUnit8List(widget.travelPackageModel!.vrImage);
      widget.travelPackageModel!.images.forEach(
        (element) async {
          final image = await getUnit8List(element);
          images.add(image!);
        },
      );

      setState(() {});
    }
  }

  @override
  void dispose() {
    discountController.dispose();
    nameController.dispose();
    locationController.dispose();
    latitudeController.dispose();
    longitudeController.dispose();
    packageTypeController.dispose();
    descriptionController.dispose();
    priceController.dispose();
    higlghtsController.dispose();
    iclusiveController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Packages',
          style: context.textTheme.headlineMedium,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 8),
        child: SingleChildScrollView(
          child: SizedBox(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Enter Package Name'),
                  VerticalGap.s,
                  CustomTextField(
                    controller: nameController,
                    hintText: 'Travel Fun Package',
                    validationMessage: 'please enter package name',
                  ),
                  VerticalGap.l,
                  const Text('Enter Location'),
                  VerticalGap.s,
                  CustomTextField(
                    controller: locationController,
                    hintText: 'Dang, Nepal',
                    validationMessage: 'please enter package location',
                  ),
                  VerticalGap.l,
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          controller: latitudeController,
                          hintText: 'Enter Latitude. 82.9201021',
                          validationMessage: 'please enter latitude',
                        ),
                      ),
                      HorizontalGap.l,
                      Expanded(
                        child: CustomTextField(
                          controller: longitudeController,
                          hintText: 'Enter longitude. 34.203923',
                          validationMessage: 'please enter longitude',
                        ),
                      ),
                      HorizontalGap.l,
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
                    ],
                  ),
                  VerticalGap.l,
                  const Text('Enter Package Description'),
                  VerticalGap.s,
                  CustomTextField(
                    hintText: 'Good Summer Package',
                    validationMessage: 'please enter package description',
                    maxLine: 3,
                    controller: descriptionController,
                  ),
                  VerticalGap.l,
                  const Text('Price Per Head'),
                  VerticalGap.s,
                  CustomTextField(
                    controller: priceController,
                    hintText: 'Rs 1000',
                    validationMessage: 'please enter package price',
                  ),
                  VerticalGap.l,
                  const Text('Enter discount'),
                  VerticalGap.s,
                  CustomTextField(
                    controller: discountController,
                    hintText: '10 %',
                    validationMessage: 'please enter package discount',
                  ),
                  VerticalGap.l,
                  const Text('Enter Place Highlights'),
                  VerticalGap.s,
                  CustomTextField(
                    controller: higlghtsController,
                    hintText: 'Beautiful sunrise, tasty cuisine',
                    validationMessage: 'please enter package highlights',
                    onSuffixTap: (value) {
                      higlights.add(value);
                      setState(() {});
                    },
                  ),
                  VerticalGap.s,
                  if (higlights.isEmpty)
                    const SizedBox.shrink()
                  else
                    SizedBox(
                      height: 32,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ...higlights.map(
                            (e) => Chip(
                              label: Text(e),
                              deleteIcon: const Icon(
                                Icons.close_rounded,
                                size: 16,
                                color: Colors.red,
                              ),
                              onDeleted: () {
                                higlights.remove(e);
                                setState(() {});
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  VerticalGap.l,
                  const Text('Enter what are inclusive'),
                  VerticalGap.s,
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          controller: iclusiveController,
                          hintText: 'Water, Food',
                          validationMessage: 'please enter package ammumity',
                          onSuffixTap: (value) {
                            inclusive.add(value);
                            setState(() {});
                          },
                        ),
                      ),
                      HorizontalGap.l,
                      const Text('Is product featured'),
                      Switch.adaptive(
                        activeColor: LightColor.eclipse,
                        value: isFeatured,
                        onChanged: (value) {
                          isFeatured = value;
                          setState(() {});
                        },
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  if (inclusive.isEmpty)
                    const SizedBox.shrink()
                  else
                    VerticalGap.s,
                  SizedBox(
                    height: 32,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...inclusive.map(
                          (e) => Chip(
                            label: Text(e),
                            deleteIcon: const Icon(
                              Icons.close_rounded,
                              size: 16,
                              color: Colors.red,
                            ),
                            onDeleted: () {
                              inclusive.remove(e);
                              setState(() {});
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text('Enter pick up address'),
                  VerticalGap.s,
                  CustomTextField(
                    controller: pickupAddressController,
                    hintText: 'Enter pick up address',
                    validationMessage: 'please enter pick up address',
                    onSuffixTap: (value) {
                      pickUpAddress.add(value);
                      setState(() {});
                    },
                  ),
                  VerticalGap.s,
                  if (pickUpAddress.isEmpty)
                    const SizedBox.shrink()
                  else
                    SizedBox(
                      height: 32,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ...pickUpAddress.map(
                            (e) => Chip(
                              label: Text(e),
                              deleteIcon: const Icon(
                                Icons.close_rounded,
                                size: 16,
                                color: Colors.red,
                              ),
                              onDeleted: () {
                                pickUpAddress.remove(e);
                                setState(() {});
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  VerticalGap.l,
                  VerticalGap.s,
                  const Text('Upload Featured Image'),
                  VerticalGap.s,
                  ImagePickerWidget(
                    image: widget.travelPackageModel?.featuredImage,
                    imageCallBack: (file) {
                      if (file != null) {
                        featuredImage = file;
                      }
                    },
                  ),
                  VerticalGap.l,
                  const Text('Upload Place Images'),
                  VerticalGap.s,
                  SizedBox(
                    width: context.width * .5,
                    child: Row(
                      children: [
                        Expanded(
                          child: ImagePickerWidget(
                            image: widget.travelPackageModel?.images[0],
                            imageCallBack: (file) {
                              if (file != null) {
                                images.add(file);
                              }
                            },
                          ),
                        ),
                        HorizontalGap.l,
                        Expanded(
                          child: ImagePickerWidget(
                            image: widget.travelPackageModel?.images[1],
                            imageCallBack: (file) {
                              if (file != null) {
                                images.add(file);
                              }
                            },
                          ),
                        ),
                        HorizontalGap.l,
                        Expanded(
                          child: ImagePickerWidget(
                            image: widget.travelPackageModel?.images[2],
                            imageCallBack: (file) {
                              if (file != null) {
                                images.add(file);
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  VerticalGap.l,
                  const Text('Upload VR Image of place'),
                  VerticalGap.s,
                  ImagePickerWidget(
                    image: widget.travelPackageModel?.vrImage,
                    imageCallBack: (file) {
                      if (file != null) {
                        vrImage = file;
                      }
                    },
                  ),
                  VerticalGap.l,
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: context.width * .2),
                    child: BlocConsumer<TravelBloc, TravelPackageState>(
                      listener: (context, state) {
                        if (state is Success) {
                          context
                            ..showSnackBar(
                              message: 'Travel Package Added',
                              toastType: ToastType.success,
                            )
                            ..pop();
                        }
                        if (state is TravelPackageError) {
                          context.showSnackBar(
                            message: state.message,
                            toastType: ToastType.error,
                          );
                        }
                      },
                      builder: (context, state) {
                        return CustomElevatedButton(
                          isLoading: state is Loading,
                          onButtonPressed: () {
                            if (formKey.currentState!.validate() &&
                                inclusive.isNotEmpty &&
                                higlights.isNotEmpty &&
                                pickUpAddress.isNotEmpty) {
                              if (images.isNotEmpty &&
                                  featuredImage != null &&
                                  vrImage != null) {
                                if (widget.createMode!) {
                                  context.read<TravelBloc>().add(
                                        TravelEvent.addPackage(
                                          featuredImage: featuredImage!,
                                          images: images,
                                          vrImage: vrImage!,
                                          travelPackageModel:
                                              TravelPackageModel(
                                            uuid: const Uuid().v1(),
                                            packageType: selectePackage,
                                            images: [],
                                            featuredImage: '',
                                            vrImage: '',
                                            description:
                                                descriptionController.text,
                                            latitude: double.parse(
                                              latitudeController.text,
                                            ),
                                            createdAt: DateTime.now(),
                                            longitude: double.parse(
                                              longitudeController.text,
                                            ),
                                            highlights: higlights,
                                            pickupAddress: pickUpAddress,
                                            inclusive: inclusive,
                                            packageName: nameController.text,
                                            location: locationController.text,
                                            isFeatured: isFeatured,
                                            discount: double.parse(
                                              discountController.text,
                                            ),
                                            tags: [],
                                            perHeadPerNight: double.parse(
                                              priceController.text,
                                            ),
                                          ),
                                        ),
                                      );
                                  return;
                                } else {
                                  context.read<TravelBloc>().add(
                                        TravelEvent.updatePacakge(
                                          featuredImage: featuredImage!,
                                          images: images,
                                          vrImage: vrImage!,
                                          travelPackageModel:
                                              TravelPackageModel(
                                            uuid:
                                                widget.travelPackageModel!.uuid,
                                            packageType: selectePackage,
                                            images: [],
                                            featuredImage: '',
                                            vrImage: '',
                                            description:
                                                descriptionController.text,
                                            latitude: double.parse(
                                              latitudeController.text,
                                            ),
                                            createdAt: DateTime.now(),
                                            longitude: double.parse(
                                              longitudeController.text,
                                            ),
                                            highlights: higlights,
                                            pickupAddress: pickUpAddress,
                                            inclusive: inclusive,
                                            packageName: nameController.text,
                                            location: locationController.text,
                                            isFeatured: isFeatured,
                                            discount: double.parse(
                                              discountController.text,
                                            ),
                                            tags: [],
                                            perHeadPerNight: double.parse(
                                              priceController.text,
                                            ),
                                          ),
                                        ),
                                      );
                                }
                                context.pop();
                                return;
                              }
                              context.showSnackBar(
                                message: 'please upload photo',
                                toastType: ToastType.message,
                              );
                            }
                          },
                          buttonText: widget.createMode!
                              ? 'Add new package'
                              : 'update package',
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
