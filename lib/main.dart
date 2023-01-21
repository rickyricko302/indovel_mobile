import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:indovel_mobile/app/data/themes.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      theme: ThemeData(primarySwatch: Colors.red),
      getPages: AppPages.routes,
    ),
  );
}
