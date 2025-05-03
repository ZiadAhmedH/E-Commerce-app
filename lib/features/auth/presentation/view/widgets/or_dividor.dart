
import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class OrDividor extends StatelessWidget {
  const OrDividor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            color: AppColor.grayHeavyLight,
          ),
        ),
        const SizedBox(width: 16,),
        Text.rich(
          TextSpan(
            text: S.of(context).or,
            style: const TextStyle(
              color: AppColor.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(width: 16,),
        Expanded(
          child: Container(
            height: 1,
            color: AppColor.grayHeavyLight,
          ),
        ),
      ],
    );
  }
}

