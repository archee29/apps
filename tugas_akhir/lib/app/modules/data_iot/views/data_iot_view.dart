import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/data_iot_controller.dart';

class DataIotView extends GetView<DataIotController> {
  const DataIotView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataIotView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DataIotView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
