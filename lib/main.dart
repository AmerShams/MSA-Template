import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:msa/app/my_app.dart';
import 'package:msa/core/data/repository/shared_prefrence_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Get.putAsync<SharedPreferences>(
    () async {
      return await SharedPreferences.getInstance();
    },
  );

  Get.lazyPut(
    () => SharedPrefrenceRepository(),
  );

  runApp(MyApp());
}
