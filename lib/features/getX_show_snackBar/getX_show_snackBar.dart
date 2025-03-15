import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXShowSnackBarScreen extends StatefulWidget {
  const GetXShowSnackBarScreen({super.key});

  @override
  State<GetXShowSnackBarScreen> createState() => _GetXShowSnackBarScreenState();
}

class _GetXShowSnackBarScreenState extends State<GetXShowSnackBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Show SnacBar"),
      ),
      body: Center(
        child: OutlinedButton(
            onPressed: () {
              Get.showSnackbar(const GetSnackBar(
                duration: Duration(seconds: 2),
                dismissDirection: DismissDirection.down,
                backgroundColor: Colors.pink,
                snackPosition: SnackPosition.TOP,
                title: "This is Mostakim",
                message: "This is motiur-mostakim",
              ));
            },
            child: const Text("SnackBar")),
      ),
    );
  }
}
