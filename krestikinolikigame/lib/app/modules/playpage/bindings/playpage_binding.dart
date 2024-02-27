import 'package:get/get.dart';

import '../controllers/playpage_controller.dart';

class PlaypageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlaypageController>(
      () => PlaypageController(),
    );
  }
}
