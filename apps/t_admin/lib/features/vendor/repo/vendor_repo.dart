

import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/features/vendor/vendor_screen.dart';


  ValueNotifier<bool> isLoading = ValueNotifier(false);
  ValueNotifier<String> user = ValueNotifier('');
  ValueNotifier<String> userEmail = ValueNotifier('');

@injectable
class VendorRepo {

  VendorRepo({required this.firebaseFirestore});

  final FirebaseFirestore firebaseFirestore;

  Future<void> login(BuildContext context, {required String email, required String password,})async{
    try {
      isLoading.value = true;
      final data = await firebaseFirestore.collection('admin').where('isVendor',isEqualTo: true).where('email',isEqualTo: email).where('password', isEqualTo: password).get();
      if(data.docs.isEmpty){
        context.showSnackBar(message: 'Wrong Credential', toastType: ToastType.error);
        isLoading.value = false;
        return;
      }
      if(data.docs.isNotEmpty){
        context.showSnackBar(message: 'Login Successful', toastType: ToastType.success);
        user.value = data.docs.first.data()['uname'] as String;
        userEmail.value = data.docs.first.data()['email'] as String;

        await Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const VendorScreen()));
        isLoading.value = false;
        return;
      }
      
    } catch (e) {
      return;
    }finally{
      isLoading.value = false;

    }

  }

}
