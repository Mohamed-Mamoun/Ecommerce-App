import 'package:ecommerce_app/core/view_model/auth_view_model.dart';
import 'package:ecommerce_app/view/auth/Login_screen.dart';
import 'package:ecommerce_app/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlView extends GetWidget<AuthViewModel> {
  const ControlView({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx( ()
      {
        return (Get.find<AuthViewModel>().user != null)
        ? const HomeView()
        : const Login_Screen();

      }
    );
  }
}