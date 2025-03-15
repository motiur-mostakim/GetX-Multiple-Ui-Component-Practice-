import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteExample extends StatelessWidget {
  const RouteExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Route Example"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed("/firstPage",
              arguments: ["Hi!, I'm First Screen", "Hi!, I'm Second Screen"]);
        },
        child: const Text("Go"),
      ),
    );
  }
}
