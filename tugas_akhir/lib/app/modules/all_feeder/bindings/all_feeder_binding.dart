import 'package:get/get.dart';

import '../controllers/all_feeder_controller.dart';

class AllFeederBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllFeederController>(
      () => AllFeederController(),
    );
  }
}
