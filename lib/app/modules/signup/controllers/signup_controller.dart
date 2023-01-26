import 'package:get/get.dart';

class SignupController extends GetxController {
  RxBool isShowPassword = false.obs;

  void changeVisibility() {
    isShowPassword.value = !isShowPassword.value;
  }
}
