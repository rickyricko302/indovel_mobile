import 'package:get/get.dart';

class SignupController extends GetxController {
  RxBool isShowPassword = false.obs;

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

  void changeVisibility() {
    isShowPassword.value = !isShowPassword.value;
  }
}
