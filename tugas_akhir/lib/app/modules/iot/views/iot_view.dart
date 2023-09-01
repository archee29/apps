import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tugas_akhir/app/controllers/auth_controller.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import '../controllers/iot_controller.dart';

class IotView extends GetView<IotController> {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IotView'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => authC.logout(),
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      // Get dan menampilkan Data dari db tapi tidak Real Time
      // body: FutureBuilder<QuerySnapshot<Object?>>(
      //   future: controller.getData(),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.done) {
      //       var listAllDocs = snapshot.data!.docs;
      //       return ListView.builder(
      //         itemCount: listAllDocs.length,
      //         itemBuilder: (context, index) => ListTile(
      //           title: Text(
      //               "${(listAllDocs[index].data() as Map<String, dynamic>)["makanan"]}"),
      //           subtitle: Text(
      //               "${(listAllDocs[index].data() as Map<String, dynamic>)["minuman"]}"),
      //         ),
      //       );
      //     }
      //     return Center(child: CircularProgressIndicator());
      //   },
      // ),

      // Realtime data from db
      body: StreamBuilder<QuerySnapshot<Object?>>(
        stream: controller.streamData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            var listAllDocs = snapshot.data!.docs;
            return ListView.builder(
              itemCount: listAllDocs.length,
              itemBuilder: (context, index) {
                if ((listAllDocs[index].data()
                        as Map<String, dynamic>)["minuman"] >=
                    1000) {
                  return ListTile(
                    onTap: () => Get.toNamed(
                      Routes.EDIT_JADWAL,
                      arguments: listAllDocs[index].id,
                    ),
                    title: Text(
                      "Makanan : ${(listAllDocs[index].data() as Map<String, dynamic>)["makanan"]}",
                    ),
                    subtitle: Text(
                      "Minuman : ${(listAllDocs[index].data() as Map<String, dynamic>)["minuman"]}",
                    ),
                    trailing: IconButton(
                      onPressed: () =>
                          controller.deleteJadwal(listAllDocs[index].id),
                      icon: Icon(Icons.delete),
                    ),
                  );
                }
                return SizedBox();
              },
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.TAMBAH_JADWAL),
        child: Icon(Icons.add),
      ),
    );
  }
}
