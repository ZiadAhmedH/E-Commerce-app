import 'package:ecommerce_app/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
class CustemButtom extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  const CustemButtom({super.key, required this.text, required this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.07,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        child: CustomText(text: text, color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
      ),
    );
  }
}