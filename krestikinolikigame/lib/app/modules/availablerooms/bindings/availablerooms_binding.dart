import 'package:get/get.dart';

import '../controllers/availablerooms_controller.dart';

class AvailableroomsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AvailableroomsController>(
      () => AvailableroomsController(),
    );
  }
}
