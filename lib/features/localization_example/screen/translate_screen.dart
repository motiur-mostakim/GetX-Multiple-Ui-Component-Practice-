import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslateScreen extends StatelessWidget {
  const TranslateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Translate Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("name".tr),
          const SizedBox(
            height: 30,
          ),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.updateLocale(const Locale("en", "US"));
                },
                child: const Text("English"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.updateLocale(const Locale("bn", "BD"));
                },
                child: const Text("Bangla"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.updateLocale(const Locale("hi", "HI"));
                },
                child: const Text("Hindi"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
