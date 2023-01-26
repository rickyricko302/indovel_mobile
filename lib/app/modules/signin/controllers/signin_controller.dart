import 'package:get/get.dart';

class SigninController extends GetxController {
  RxBool isShowPassword = false.obs;

  void changeVisibility() {
    isShowPassword.value = !isShowPassword.value;
  }
}
