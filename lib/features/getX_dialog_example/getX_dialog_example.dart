import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXDialogExample extends StatelessWidget {
  const GetXDialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Dialog Example"),
      ),
      body: Center(
        child: OutlinedButton(
            onPressed: () {
              Get.defaultDialog(
                  buttonColor: Colors.pink,
                  cancelTextColor: Colors.deepPurpleAccent,
                  confirmTextColor: Colors.deepOrangeAccent,
                  titlePadding: const EdgeInsets.all(16),
                  title: "This is Motiur-Mostakim",
                  content: const Text("This is Motiur Rahman Mostakim"),
                  cancel: const Text("Cacnel"),
                  confirm: const Text("Confirm"));
            },
            child: const Text("Dialog")),
      ),
    );
  }
}
