import 'package:get/get.dart';

import '../controllers/detail_novel_controller.dart';

class DetailNovelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailNovelController>(
      () => DetailNovelController(),
    );
  }
}
