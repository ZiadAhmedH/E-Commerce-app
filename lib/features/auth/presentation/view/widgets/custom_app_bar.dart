import 'package:ecommerce_app/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(context, {required String title}) {
    return AppBar(
      title: CustomText(text: title, color: Colors.black, fontSize: 19, fontWeight: FontWeight.w700),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () {},
      ),
    );
  }
