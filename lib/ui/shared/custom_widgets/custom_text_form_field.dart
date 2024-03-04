import 'package:flutter/material.dart';
import 'package:msa/core/translation/app_translation.dart';
import 'package:msa/ui/shared/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String keyLabel;
  final String keyHint;
  final Color? fillColor;
  final TextEditingController controller;
  const CustomTextFormField({
    super.key,
    required this.keyLabel,
    required this.keyHint,
    this.fillColor,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: fillColor == null ? false : true,
        fillColor: fillColor ?? AppColors.backgroundColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: tr(keyLabel),
        hintText: tr(keyHint),
        hintStyle: TextStyle(
          color: AppColors.greyColor,
        ),
      ),
    );
  }
}
