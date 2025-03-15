import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/features/add_remove_icon_example/getX_add_remove_icon_example/icon_controller.dart';

class GetxAddRemoveIconExample extends StatefulWidget {
  const GetxAddRemoveIconExample({super.key});

  @override
  State<GetxAddRemoveIconExample> createState() =>
      _GetxAddRemoveIconExampleState();
}

class _GetxAddRemoveIconExampleState extends State<GetxAddRemoveIconExample> {
  final controller = Get.put(IconController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Add Remove Icon Example"),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(16),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: controller.names.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.grey)),
              child: ListTile(
                  onTap: () {
                    if (controller.selectIcon.contains(
                      controller.names[index].toString(),
                    )) {
                      controller.removeIcon(controller.names[index].toString());
                    } else {
                      controller.addIcon(controller.names[index].toString());
                    }
                  },
                  title: Text(controller.names[index].toString()),
                  trailing: Obx(
                    () => Icon(
                      controller.selectIcon.contains(
                        controller.names[index].toString(),
                      )
                          ? Icons.favorite_outlined
                          : Icons.favorite_outline,
                      color: controller.selectIcon.contains(
                        controller.names[index].toString(),
                      )
                          ? Colors.red
                          : Colors.green,
                    ),
                  )),
            );
          }),
    );
  }
}
