import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_feeder_controller.dart';

class DetailFeederView extends GetView<DetailFeederController> {
  const DetailFeederView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailFeederView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailFeederView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
