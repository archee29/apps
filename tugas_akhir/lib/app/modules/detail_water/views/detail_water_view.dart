import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_water_controller.dart';

class DetailWaterView extends GetView<DetailWaterController> {
  const DetailWaterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailWaterView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailWaterView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
