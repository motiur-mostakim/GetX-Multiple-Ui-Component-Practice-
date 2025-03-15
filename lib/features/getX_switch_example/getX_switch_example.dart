import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/features/getX_switch_example/controller.dart';

class PracticeSwitchGetX extends StatelessWidget {
  const PracticeSwitchGetX({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controllers());

    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Switch Example"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                controller.notification.value ? "IsSwitch On" : "IsSwitch Off",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const SizedBox(
              width: 100,
            ),
            Obx(() => Switch(
                  value: controller.notification.value,
                  onChanged: (value) {
                    controller.setSwitch(value); // Toggle the theme
                  },
                ))
          ],
        ),
      ),
    );
  }
}
