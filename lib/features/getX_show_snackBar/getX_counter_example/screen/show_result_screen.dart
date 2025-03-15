import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowResultScreen extends StatelessWidget {
  const ShowResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var result = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Show Result"),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Text(
          result.toString(),
          // "Name: ${result["name"]}\n Mobile: ${result["mobile"]}\n Email: ${result["email"]}"
          style: const TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
