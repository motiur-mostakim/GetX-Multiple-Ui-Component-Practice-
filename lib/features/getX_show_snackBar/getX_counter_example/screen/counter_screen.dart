import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/features/getX_show_snackBar/getX_counter_example/getX_controller/getX_controller.dart';
import 'package:getx_practice/features/getX_show_snackBar/getX_counter_example/screen/show_result_screen.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                controller.counter.value.toString(),
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: () {
                      controller.increment();
                    },
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    controller.decrement();
                  },
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                onPressed: () {
                  controller.reset();
                  print("reset");
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(color: Colors.white),
                )),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                onPressed: () {
                  Get.to(() => const ShowResultScreen(),
                      arguments: controller.counter.value
                      // {
                      //   "name": "Motiur Rahman Mostakim",
                      //   "mobile": "01957585557",
                      //   "email": "mdmrmostakim1406204@gmail.com",
                      //   "isPassed": true
                      // },
                      );
                },
                child: const Text(
                  "Show Result",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
