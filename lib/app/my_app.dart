import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:msa/core/translation/app_translation.dart';
import 'package:msa/ui/shared/utils.dart';
import 'package:msa/ui/views/main_view/main_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      locale: getLocal(),
      translations: AppTranslation(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const MainView(),
    );
  }
}
