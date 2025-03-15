import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/features/getX_progress_slider_example/core/controller.dart';

class GetxProgressSliderExample extends StatelessWidget {
  const GetxProgressSliderExample({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProgressSliderController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Progress Slider Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.pink.withOpacity(controller.opacity.value)),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Obx(() => Slider(
                value: controller.opacity.value,
                onChanged: (value) {
                  controller.setOpacity(value);
                }))
          ],
        ),
      ),
    );
  }
}
