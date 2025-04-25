import 'package:bookly_app/features/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

void main() {
  runApp(const BooclyApp());
}

class BooclyApp extends StatelessWidget {
  const BooclyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
