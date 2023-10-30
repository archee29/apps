import 'package:get/get.dart';

import '../controllers/iot_controller.dart';

class IotBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IotController>(
      () => IotController(),
    );
  }
}
