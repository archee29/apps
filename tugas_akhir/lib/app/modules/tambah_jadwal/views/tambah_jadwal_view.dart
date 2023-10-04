import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tambah_jadwal_controller.dart';

class TambahJadwalView extends GetView<TambahJadwalController> {
  const TambahJadwalView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Jadwal'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller.makananController,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: "Makanan",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.minumanController,
              textInputAction: TextInputAction.done,
              decoration: const InputDecoration(
                labelText: "Minuman",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () => controller.tambahJadwal(
                controller.makananController.text,
                controller.minumanController.text,
              ),
              child: const Text("Tambah Jadwal"),
            ),
          ],
        ),
      ),
    );
  }
}
