import 'package:flutter/material.dart';
import 'package:msa/core/enums/text_style_type.dart';
import 'package:msa/core/translation/app_translation.dart';
import 'package:msa/ui/shared/colors.dart';
import 'package:msa/ui/shared/custom_widgets/custom_text.dart';
import 'package:msa/ui/shared/utils.dart';

class CustomForm extends StatelessWidget {
  final double width;
  final List<Widget> children;
  final String keyTitle;
  final Color? backgroundColor;
  const CustomForm({
    super.key,
    required this.width,
    required this.children,
    required this.keyTitle,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width,
      margin: EdgeInsetsDirectional.symmetric(
        vertical: screenWidth(20),
      ),
      child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              height: width - screenWidth(10),
              width: screenWidth(1),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10),
                color: backgroundColor ?? AppColors.greyColor,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.symmetric(
                  vertical: screenWidth(10),
                  horizontal: screenWidth(25),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...children,
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: screenWidth(6),
            width: screenWidth(1),
            alignment: AlignmentDirectional.centerStart,
            margin: EdgeInsetsDirectional.only(
              start: screenWidth(15),
              end: screenWidth(30),
            ),
            padding: EdgeInsetsDirectional.all(screenWidth(25)),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(10),
              color: AppColors.orangeColor,
            ),
            child: CustomText(
              text: tr(keyTitle),
              styleType: TextStyleType.TITLE,
              textColor: AppColors.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
