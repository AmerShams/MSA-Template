import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:msa/core/data/repository/shared_prefrence_repository.dart';

double screenWidth(double percent) {
  BuildContext context = Get.context!;
  if (context.isPortrait)
    return Get.size.width / percent;
  else
    return Get.size.height / percent;
}

double screenHeight(double percent) {
  BuildContext context = Get.context!;
  if (context.isPortrait)
    return Get.size.height / percent;
  else
    return Get.size.width / percent;
}

Locale getLocal() {
  String langCode = storage.getAppLanguage();

  if (langCode == 'ar')
    return Locale('ar', 'SA');
  else if (langCode == 'en')
    return Locale('en', 'US');
  else
    return Locale('ar', 'SA');
}

void changeLanguage(String code) {
  storage.setAppLanguage(code);
  Get.updateLocale(getLocal());
}

SharedPrefrenceRepository get storage => Get.find<SharedPrefrenceRepository>();
