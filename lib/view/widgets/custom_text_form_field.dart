import 'package:ecommerce_app/core/utils/constant.dart';
import 'package:ecommerce_app/core/utils/extensions.dart';
import 'package:ecommerce_app/view/widgets/customText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomTextFormField extends StatelessWidget {
  final String text;

  final String hint;
  final TextEditingController controller;
  final void Function(String) onSave;
  final Function validator;

  const CustomTextFormField(
      {Key key,  this.text,
      this.hint,
       this.onSave,
       this.validator,
      this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: text,
          fontSize: 14.0.sp,
          color: Colors.grey.shade800,
        ),
        TextFormField(
          controller: controller,
          onSaved: onSave,
          validator: validator,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            fillColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
