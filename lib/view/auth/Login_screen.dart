import 'package:ecommerce_app/core/utils/constant.dart';
import 'package:ecommerce_app/core/utils/extensions.dart';
import 'package:ecommerce_app/core/view_model/auth_view_model.dart';
import 'package:ecommerce_app/view/auth/register_screen.dart';
import 'package:ecommerce_app/view/widgets/customText.dart';
import 'package:ecommerce_app/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login_Screen extends GetWidget<AuthViewModel> {
  const Login_Screen({Key key}) : super(key: key);

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
            key: controller.formKey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: 'Welcome,',
                        color: Colors.black,
                        fontSize: 22.0.sp),
                    TextButton(
                      onPressed: () {
                        Get.to(() =>  Register_Screen());
                      },
                      child: CustomText(
                          text: 'SignUp',
                          color: primaryColor,
                          fontSize: 14.0.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.0.hp,
                ),
                CustomText(
                    text: 'Sign in To Continue',
                    color: Colors.grey,
                    fontSize: 12.0.sp),
                SizedBox(
                  height: 5.0.hp,
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
                  height: 2.0.hp,
                ),
                CustomText(
                  text: 'Forget Password?',
                  color: Colors.black,
                  fontSize: 12.0.sp,
                  alignment: Alignment.topRight,
                ),
                SizedBox(height: 2.5.hp),
                ElevatedButton(
                  onPressed: () {
                    if (controller.formKey.currentState.validate()) {
                      controller.signInMethod(
                          controller.emailController.text.trim(),
                          controller.passController.text.trim());
                    }
                  },
                  child: CustomText(
                    alignment: Alignment.center,
                    text: 'SIGN IN',
                    fontSize: 14.0.sp,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                      padding: EdgeInsets.all(3.0.wp),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
                SizedBox(height: 3.0.hp),
                CustomText(
                  text: '- OR -',
                  color: Colors.black,
                  fontSize: 16.0.sp,
                  alignment: Alignment.center,
                ),
                SizedBox(height: 3.0.hp),
                ElevatedButton(
                  onPressed: () {
                    controller.googleSignInMethod();
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/google.jpeg',
                        height: 10.0.wp,
                      ),
                      SizedBox(width: 10.0.wp),
                      CustomText(
                          text: 'Sign in with Google',
                          color: Colors.black,
                          fontSize: 14.0.sp)
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white, elevation: 5.0),
                ),
                SizedBox(height: 2.0.hp),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/facebook1.jpeg',
                        height: 10.0.wp,
                      ),
                      SizedBox(width: 10.0.wp),
                      CustomText(
                          text: 'Sign in with Facebook',
                          color: Colors.black,
                          fontSize: 14.0.sp)
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white, elevation: 5.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
