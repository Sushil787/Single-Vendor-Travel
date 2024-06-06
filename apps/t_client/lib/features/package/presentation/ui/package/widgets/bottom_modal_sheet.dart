// import 'package:flutter/material.dart';
// import 'package:t_client/core/helper/extension/context_extension.dart';
// import 'package:t_client/core/theme/app_colors.dart';
// import 'package:t_client/core/widgets/custom_button.dart';
// import 'package:t_client/core/widgets/custom_textfield.dart';
// import 'package:t_client/features/package/data/model/travel_package_model.dart';

// /// Show bottom Sheet
// Future<void> bottomSheet(
//   BuildContext context,
//   TravelPackageModel travelPackageModel,
// ) {
//   return showModalBottomSheet<void>(
//     isScrollControlled: true,
//     context: context,
//     backgroundColor: LightColor.whiteSmoke,
//     builder: (BuildContext context) {
//       return Padding(
//         padding: EdgeInsets.only(
//           bottom: MediaQuery.of(context).viewInsets.bottom,
//         ),
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 16),
//           height: 400,
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 Text(
//                   travelPackageModel.packageName,
//                   style: context.textTheme.bodyLarge?.copyWith(
//                     fontWeight: FontWeight.w800,
//                   ),
//                 ),
//                 CustomTextField(hintText: 'Enter your name'),
//                 CustomTextField(hintText: 'Enter number of person'),
//                 CustomTextField(hintText: 'Enter valid phone number'),
//                 // DatePickerDialog(initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime(year));
//                 Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: CustomElevatedButton(
//                     btnFontSize: 16,
//                     onButtonPressed: () {
//                       Navigator.pop(context);
//                     },
//                     buttonText: 'Place Order',
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//     },
//   );
// }
