
import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
class CustemTextFormFeild extends StatelessWidget {

  final String hintText;
  final IconData iconData;
  final bool isPassword;
  final TextEditingController controller;
  final TextInputType textInputType;  


  const CustemTextFormFeild({super.key, required this.hintText, required this.iconData, required this.isPassword, required this.controller, required this.textInputType});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      obscureText: isPassword,
    
      decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
        border: borderBulider(),
        enabledBorder: borderBulider(),
        focusedBorder: borderBulider(),
        fillColor: AppColor.graylight,
        filled: true,
        suffixIcon: isPassword? Icon(iconData, color: AppColor.gray,) : null,
      ),
     
    );
  }

  OutlineInputBorder borderBulider() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: AppColor.grayHeavyLight ,width: 1),
      );
  }
}