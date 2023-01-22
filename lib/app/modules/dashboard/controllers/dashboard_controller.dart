import 'package:get/get.dart';

class DashboardController extends GetxController {
  RxInt pageSelected = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changePage(int page) {
    pageSelected.value = page;
  }
}
