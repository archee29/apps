import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class IotController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<QuerySnapshot<Object?>> getData() async {
    CollectionReference jadwal = firestore.collection("jadwal");
    return jadwal.get();
  }

  Stream<QuerySnapshot<Object?>> streamData() {
    CollectionReference jadwal = firestore.collection("jadwal");
    return jadwal.orderBy("time", descending: true).snapshots();
  }

  void deleteJadwal(String docId) async {
    DocumentReference docRef = firestore.collection("jadwal").doc(docId);
    try {
      Get.defaultDialog(
        title: "Delete Data",
        middleText: "Apakah Kamu yakin akan menghapus data ini? ",
        onConfirm: () async {
          await docRef.delete();
          Get.back();
        },
        textConfirm: "Ya",
        textCancel: "Tidak",
      );
    } catch (e) {
      print(e);
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        middleText: "Tidak Berhasil Menghapus Data ini",
      );
    }
  }
}
