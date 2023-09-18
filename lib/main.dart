import 'package:business_app/constant/localization.dart';
import 'package:business_app/controller/app_controller.dart';
import 'package:business_app/view/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
  Get.put(AppController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Business App',
      translations: TranslationService(),
      locale: const Locale('ur'),
      fallbackLocale: const Locale('ur'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(0, 37, 0, 1)),
        primaryColor: const Color.fromRGBO(0, 37, 0, 1),
        secondaryHeaderColor: const Color.fromRGBO(106, 251, 146, 1),
        cardColor: const Color.fromRGBO(102, 255, 0, 1),
        useMaterial3: true,
        textTheme: const TextTheme(
          displaySmall: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'NotoNastaliqUrdu',
            fontSize: 12,
          ),
          displayMedium: TextStyle(
            fontFamily: 'NotoNastaliqUrdu',
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16,
          ),
          bodySmall: TextStyle(
            fontFamily: 'NotoNastaliqUrdu',
            color: Color.fromRGBO(106, 251, 146, 1),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          bodyMedium: TextStyle(
            color: Color.fromRGBO(106, 251, 146, 1),
            fontFamily: 'NotoNastaliqUrdu',
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          titleMedium: TextStyle(
            color: Color.fromRGBO(0, 37, 0, 1),
            fontFamily: 'NotoNastaliqUrdu',
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      home: const DashboardView(),
    );
  }
}
