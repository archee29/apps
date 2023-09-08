import 'package:get/get.dart';
import 'package:tugas_akhir/app/controllers/feeder_controller.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';

class PageIndexController extends GetxController {
  final feederController = Get.find<FeederController>();
  RxInt pageIndex = 0.obs;

  void changePage(int index) async {
    pageIndex.value = index;

    switch (index) {
      case 1:
        feederController.feeder();
        break;
      case 2:
        Get.offAllNamed(Routes.SETTING);
      default:
        Get.offAllNamed(Routes.HOME);
        break;
    }
  }
}
