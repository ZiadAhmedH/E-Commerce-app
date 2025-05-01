import 'package:ecommerce_app/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class LoginCustomBtn extends StatelessWidget {
   
  final String text;
  final Color color;
  final VoidCallback onPressed;
  final Icon icon;
  const LoginCustomBtn({
    super.key,
    required this.text,
    required this.color,
    required this.onPressed,required this.icon,
  });
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.07,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey, width: 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            CustomText(text: text, color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
          ],
        ),
      ),
    );
  }
}
