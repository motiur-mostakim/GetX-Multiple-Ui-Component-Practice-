import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CameraGalleryController extends GetxController {
  final RxString imagePath = "".obs;

  Future getImage(var values) async {
    final ImagePicker picImage = ImagePicker();
    final image = await picImage.pickImage(source: values);

    if (image != null) {
      imagePath.value = image.path.toString();
    }
  }
}
