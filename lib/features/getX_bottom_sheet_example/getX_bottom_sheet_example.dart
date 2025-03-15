import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXBottomSheetExample extends StatelessWidget {
  const GetXBottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX BottomSheet Example"),
      ),
      body: Center(
        child: OutlinedButton(
            onPressed: () {
              Get.bottomSheet(Container(
                height: 300,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Get.changeTheme(ThemeData.light());
                        Navigator.pop(context);
                      },
                      title: const Text("Light Theme"),
                      trailing: const Icon(Icons.light_mode),
                    ),
                    ListTile(
                      onTap: () {
                        Get.changeTheme(ThemeData.dark());
                        Navigator.pop(context);
                      },
                      title: const Text("Drak Theme"),
                      trailing: const Icon(Icons.dark_mode),
                    ),
                  ],
                ),
              ));
            },
            child: const Text("BottomSheet")),
      ),
    );
  }
}
