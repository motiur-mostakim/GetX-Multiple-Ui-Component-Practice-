import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/features/camera_gallery_example_getX/camera_gallery_controller.dart';
import 'package:image_picker/image_picker.dart';

class CameraGalleryExampleGetX extends StatefulWidget {
  const CameraGalleryExampleGetX({super.key});

  @override
  State<CameraGalleryExampleGetX> createState() =>
      _CameraGalleryExampleGetXState();
}

class _CameraGalleryExampleGetXState extends State<CameraGalleryExampleGetX> {
  final controller = Get.put(CameraGalleryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Camera And Gallery Example"),
      ),
      body: Center(
        child: Obx(() => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: controller.imagePath.isNotEmpty
                      ? FileImage(File(controller.imagePath.toString()))
                      : null,
                ),
                const SizedBox(
                  height: 30,
                ),
                Flex(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    direction: Axis.horizontal,
                    children: [
                      OutlinedButton(
                          onPressed: () {
                            controller.getImage(ImageSource.camera);
                          },
                          child: const Text("Camera")),
                      OutlinedButton(
                          onPressed: () {
                            controller.getImage(ImageSource.gallery);
                          },
                          child: const Text("Gallery")),
                    ])
              ],
            )),
      ),
    );
  }
}
