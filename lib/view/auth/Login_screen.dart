import 'package:ecommerce_app/core/utils/constant.dart';
import 'package:ecommerce_app/core/utils/extensions.dart';
import 'package:ecommerce_app/view/widgets/customText.dart';
import 'package:ecommerce_app/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20.0.wp, left: 7.0.wp, right: 7.0.wp),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    text: 'Welcome,', color: Colors.black, fontSize: 22.0.sp),
                CustomText(
                    text: 'SignUp', color: primaryColor, fontSize: 14.0.sp),
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
                text: 'Email',
                hint: 'iamdavid@gmail.com',
                onSave: (v) {},
                validator: (v) {
                  return '';
                }),
            SizedBox(
              height: 4.0.hp,
            ),
            CustomTextFormField(
                text: 'Password',
                hint: '***********',
                onSave: (v) {},
                validator: (v) {
                  return '';
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
              onPressed: () {},
              child: CustomText(
                alignment: Alignment.center,
                text: 'Sign in',
                fontSize: 14.0.sp,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                primary: primaryColor,
                  padding: EdgeInsets.all(3.0.wp),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
            )
          ],
        ),
      ),
    );
  }
}
