import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tugas_akhir/app/controllers/tab_controller.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:tugas_akhir/app/widgets/wrapper/add_wrapper.dart';
import '../controllers/tambah_jadwal_controller.dart';

class TambahJadwalView extends GetView<TambahJadwalController> {
  TambahJadwalView({super.key});
  TabsController tabController = Get.put(TabsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text(
          'Tambah Jadwal',
          style: TextStyle(
            color: AppColors.secondary,
            fontSize: 14,
          ),
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: SvgPicture.asset('assets/icons/arrow-left.svg'),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        bottom: TabBar(
          controller: tabController.controller,
          tabs: tabController.addTabs,
        ),
      ),
      body: TabBarView(
        controller: tabController.controller,
        physics: const BouncingScrollPhysics(),
        children: const [JadwalPagiForm(), JadwalSoreForm()],
      ),
    );
  }
}
