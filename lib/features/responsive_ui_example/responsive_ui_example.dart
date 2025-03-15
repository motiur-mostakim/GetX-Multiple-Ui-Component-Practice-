import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResponsiveUiExample extends StatelessWidget {
  const ResponsiveUiExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive UI Example"),
      ),
      body: Container(
        height: Get.height * .5,
        width: Get.width,
        color: Colors.pink,
      ),
    );
  }
}
