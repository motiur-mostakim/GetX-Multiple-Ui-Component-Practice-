import 'package:get/get.dart';

class IconController extends GetxController {
  final RxList<String> names = [
    "MR Mostakim",
    "Motiur Rahman Mostakim",
    "Motiur Rahman",
    "Motiur Mostakim",
    "MRM",
    "MD MR Mostakim",
    "MD Motiur Rahman Mostakim"
  ].obs;

  final RxList<dynamic> selectIcon = [].obs;

  addIcon(String value) {
    selectIcon.add(value);
  }

  removeIcon(String value) {
    selectIcon.remove(value);
  }
}
