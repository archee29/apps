import 'package:get/get.dart';

import '../controllers/detail_water_controller.dart';

class DetailWaterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailWaterController>(
      () => DetailWaterController(),
    );
  }
}
