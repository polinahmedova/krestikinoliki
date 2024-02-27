import 'package:get/get.dart';

import '../controllers/createroom_controller.dart';

class CreateroomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateroomController>(
      () => CreateroomController(),
    );
  }
}
