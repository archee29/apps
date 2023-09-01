import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/iot_controller.dart';

class IotView extends GetView<IotController> {
  const IotView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IotView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'IotView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
