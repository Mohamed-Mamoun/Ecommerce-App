import 'package:ecommerce_app/core/utils/constant.dart';
import 'package:ecommerce_app/core/utils/extensions.dart';
import 'package:ecommerce_app/view/widgets/customText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;

  final String hint;

  final void Function(String?)? onSave;
  final String Function(String?)? validator;

  CustomTextFormField({
    required this.text,
    required this.hint,
    required this.onSave,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(
            text: text,
            fontSize: 14.0.sp,
            color: Colors.grey.shade800,
          ),
          TextFormField(
            onSaved: onSave,
            validator: validator,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              fillColor: Colors.white,
            ),
          ),
          
        ],
      ),
    );
  }
}
