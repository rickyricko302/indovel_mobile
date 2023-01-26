import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  ScrollController scrollController = ScrollController();
  RxBool isToolbarPinned = false.obs;
  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(() {
      if (scrollController.position.pixels.ceil() >= 106 &&
          !isToolbarPinned.value) {
        isToolbarPinned.value = true;
      } else if (scrollController.position.pixels.ceil() < 106 &&
          isToolbarPinned.value) {
        isToolbarPinned.value = false;
      }
    });
  }
}
