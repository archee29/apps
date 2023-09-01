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
              decoration: InputDecoration(
                labelText: "Makanan",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.minumanController,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: "Minuman",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () => controller.tambahJadwal(
                controller.makananController.text,
                controller.minumanController.text,
              ),
              child: Text("Tambah Jadwal"),
            ),
          ],
        ),
      ),
    );
  }
}
