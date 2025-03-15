import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/features/camera_gallery_example_getX/camera_gallery_example_getX.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // translations: TranslateLocalization(),
      // locale: const Locale("en", "US"),
      // fallbackLocale: const Locale("en", "US"),
      theme: ThemeData(
        // text Theme
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black87),
          bodyMedium: TextStyle(color: Colors.black54),
          labelLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        // button Theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink, // Default button color
            foregroundColor: Colors.white, // Text color
          ),
        ),
        // all appBar
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue, // Default AppBar color
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: const CameraGalleryExampleGetX(),

      // For route

      // getPages: [
      //   GetPage(
      //     name: "/",
      //     page: () => const RouteExample(),
      //   ),
      //   GetPage(
      //     name: "/firstPage",
      //     page: () => const FirstScreen(),
      //   ),
      //   GetPage(
      //     name: "/secondPage",
      //     page: () => const SecondScreen(),
      //   ),
      // ],
    );
  }
}
