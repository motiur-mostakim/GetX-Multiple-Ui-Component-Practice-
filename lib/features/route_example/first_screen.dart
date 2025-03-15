import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
        title: Text(arg[0]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed("/secondPage", arguments: arg);
        },
        child: const Text("Go"),
      ),
    );
  }
}
