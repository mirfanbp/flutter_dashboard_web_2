import 'package:flutter/material.dart';
import 'package:flutter_dashboard_web_2/constants/style.dart';
import 'package:flutter_dashboard_web_2/widgets/custom_text.dart';

class InfoCardSmall extends StatelessWidget {
  final String? title;
  final String? value;
  final Color? topColor;
  final bool? isActive;
  final VoidCallback? onTap;

  const InfoCardSmall(
      {Key? key,
      this.title,
      this.value,
      this.topColor,
      this.isActive,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: isActive != null ? active : lightGrey, width: .5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: title ?? '',
                size: 24,
                weight: FontWeight.w300,
                color: isActive != null ? active : lightGrey,
              ),
              CustomText(
                text: value ?? '',
                size: 24,
                weight: FontWeight.bold,
                color: isActive != null ? active : lightGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
