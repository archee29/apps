import 'package:get/get.dart';

import '../controllers/data_manual_controller.dart';

class DataManualBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataManualController>(
      () => DataManualController(),
    );
  }
}
