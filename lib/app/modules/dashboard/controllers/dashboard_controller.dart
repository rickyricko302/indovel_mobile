import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:indovel_mobile/app/modules/dashboard/views/favorit/controllers/favorit_controller.dart';
import 'package:indovel_mobile/app/modules/dashboard/views/home/controllers/home_controller.dart';
import 'package:indovel_mobile/app/modules/dashboard/views/keranjang/controllers/keranjang_controller.dart';
import 'package:indovel_mobile/app/modules/dashboard/views/profile/controllers/profile_controller.dart';

class DashboardController extends GetxController {
  RxInt pageSelected = 0.obs;
  PageController pageController = PageController();

  void changePage(int page) {
    pageSelected.value = page;
    pageController.jumpToPage(page);
  }

  @override
  void onInit() {
    super.onInit();
    Get.put(HomeController());
    Get.put(FavoritController());
    Get.put(KeranjangController());
    Get.put(ProfileController());
  }
}
