
import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/features/auth/presentation/view/widgets/custom_check_box.dart';
import 'package:ecommerce_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class TermsAndConditinsWidget extends StatefulWidget {
  const TermsAndConditinsWidget({
    super.key,
  });

  @override
  State<TermsAndConditinsWidget> createState() => _TermsAndConditinsWidgetState();
}

class _TermsAndConditinsWidgetState extends State<TermsAndConditinsWidget> {
 

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
       CustomCheckBox(
          isChecked: isChecked,
          onChecked: (value) {
            setState(() {
              isChecked = value;
            });
          },
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text.rich(
            TextSpan(
              text: S.of(context).trems_conditions,
              style: const TextStyle(
                color: AppColor.gray1,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
              children: [
                TextSpan(
                  text: " ${S.of(context).trems_conditions_link}",
                  style: const TextStyle(
                    color: AppColor.primaryLightColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
       
      ],
    );
  }
}
