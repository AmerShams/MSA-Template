import 'package:flutter/material.dart';
import 'package:msa/ui/shared/colors.dart';
import 'package:msa/ui/shared/custom_widgets/custom_text_form_field.dart';
import 'package:msa/ui/shared/utils.dart';

class MoreView extends StatelessWidget {
  const MoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Padding(
          padding: EdgeInsetsDirectional.all(screenWidth(20)),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
