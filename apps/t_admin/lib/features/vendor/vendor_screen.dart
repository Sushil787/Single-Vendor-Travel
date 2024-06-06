

import 'package:flutter/material.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/features/vendor/repo/vendor_repo.dart';

class VendorScreen extends StatefulWidget {
  const VendorScreen({super.key});

  @override
  State<VendorScreen> createState() => _VendorScreenState();
}

class _VendorScreenState extends State<VendorScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(actions: [Text('Vendor'), HorizontalGap.l],) ,
      ///      appBar:AppBar(title:Text('Vendor')) ,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
     Text(user.value),
        Text(userEmail.value),
      ],),
    );
  }
}