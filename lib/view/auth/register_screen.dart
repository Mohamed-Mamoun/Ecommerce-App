import 'package:ecommerce_app/core/utils/constant.dart';
import 'package:ecommerce_app/core/utils/extensions.dart';
import 'package:ecommerce_app/core/view_model/auth_view_model.dart';
import 'package:ecommerce_app/view/widgets/customText.dart';
import 'package:ecommerce_app/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Register_Screen extends GetWidget<AuthViewModel> {
  Register_Screen({Key key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Padding(
            padding: EdgeInsets.only(top: 15.0.wp, left: 7.0.wp, right: 7.0.wp),
            child: SingleChildScrollView(
                child: Form(
                    key: formKey,
                    child: Column(children: [
                      CustomText(
                          text: 'Sign Up',
                          color: Colors.black,
                          fontSize: 22.0.sp),
                      SizedBox(
                        height: 5.0.hp,
                      ),
                      CustomTextFormField(
                          controller: controller.nameController,
                          text: 'Name',
                          hint: 'UserName',
                          onSave: (v) {},
                          validator: (v) {
                            if (v.isEmpty || v.trim().isEmpty) {
                              return 'UserName cannot be empty';
                            }
                          }),
                      SizedBox(
                        height: 4.0.hp,
                      ),
                      CustomTextFormField(
                          controller: controller.emailController,
                          text: 'Email',
                          hint: 'iamdavid@gmail.com',
                          onSave: (v) {},
                          validator: (v) {
                            if (v.isEmpty || v == null) {
                              return 'Email cannot be empty';
                            }
                          }),
                      SizedBox(
                        height: 4.0.hp,
                      ),
                      CustomTextFormField(
                          controller: controller.passController,
                          text: 'Password',
                          hint: '***********',
                          onSave: (v) {},
                          validator: (v) {
                            if (v.isEmpty || v.trim().isEmpty) {
                              return 'Password cannot be empty';
                            }
                          }),
                      SizedBox(
                        height: 6.0.hp,
                      ),
                      SizedBox(height: 2.5.hp),
                      ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState.validate()) {
                            controller.signUpMethod(
                                controller.emailController.text.trim(),
                                controller.passController.text.trim());
                          }
                        },
                        child: CustomText(
                          alignment: Alignment.center,
                          text: 'SIGN UP',
                          fontSize: 14.0.sp,
                          color: Colors.white,
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            padding: EdgeInsets.all(3.0.wp),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                      ),
                    ])))));
  }
}
