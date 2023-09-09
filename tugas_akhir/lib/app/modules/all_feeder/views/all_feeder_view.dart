import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/all_feeder_controller.dart';

class AllFeederView extends GetView<AllFeederController> {
  const AllFeederView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AllFeederView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AllFeederView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
