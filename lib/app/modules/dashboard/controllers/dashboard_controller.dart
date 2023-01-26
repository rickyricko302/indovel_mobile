import 'package:get/get.dart';

class DashboardController extends GetxController {
  RxInt pageSelected = 0.obs;

  void changePage(int page) {
    pageSelected.value = page;
  }
}
