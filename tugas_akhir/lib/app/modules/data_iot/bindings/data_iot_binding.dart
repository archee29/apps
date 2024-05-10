import 'package:get/get.dart';

import '../controllers/data_iot_controller.dart';

class DataIotBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataIotController>(
      () => DataIotController(),
    );
  }
}
