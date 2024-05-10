import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_alert_dialog.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_notification.dart';

class DetailWaterController extends GetxController {
  DateTime? start;
  DateTime end = DateTime.now();
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Stream<DocumentSnapshot<Map<String, dynamic>>> streamUser() async* {
    String uid = auth.currentUser!.uid;
    yield* firestore.collection("user").doc(uid).snapshots();
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getAllFeeder() async {
    String uid = auth.currentUser!.uid;
    if (start == null) {
      QuerySnapshot<Map<String, dynamic>> query = await firestore
          .collection("user")
          .doc(uid)
          .collection("feeder")
          .where("date", isLessThan: end.toIso8601String())
          .orderBy(
            "date",
            descending: true,
          )
          .get();
      return query;
    } else {
      QuerySnapshot<Map<String, dynamic>> query = await firestore
          .collection("user")
          .doc(uid)
          .collection("feeder")
          .where("date", isGreaterThan: start!.toIso8601String())
          .where("date",
              isLessThan: end.add(const Duration(days: 1)).toIso8601String())
          .orderBy(
            "date",
            descending: true,
          )
          .get();
      return query;
    }
  }

  // Future<void> updateSchedule() async {
  //   String uid = auth.currentUser!.uid;
  //   try {
  //     if (dateController.text.isNotEmpty &&
  //         timeController.text.isNotEmpty &&
  //         titleController.text.isNotEmpty &&
  //         deskripsiController.text.isNotEmpty &&
  //         makananController.text.isNotEmpty &&
  //         minumanController.text.isNotEmpty) {
  //       Map<String, dynamic> data = {
  //         "date": DateTime.now().toIso8601String(),
  //         "tanggal": dateController.text,
  //         "waktu": timeController.text,
  //         "title": titleController.text,
  //         "deskripsi": deskripsiController.text,
  //         "makanan": makananController.text,
  //         "minuman": minumanController.text,
  //         "created_at": DateTime.now().toIso8601String(),
  //       };
  //       firestore
  //           .collection("user")
  //           .doc(uid)
  //           .collection("schedule")
  //           .get()
  //           .then((QuerySnapshot querySnapshot) {
  //         final docId = querySnapshot.docs.first.id;
  //         firestore
  //             .collection("user")
  //             .doc(uid)
  //             .collection("schedule")
  //             .doc(docId)
  //             .update(data);
  //       });
  //       Get.back();
  //       CustomNotification.successNotification(
  //           "Berhasil", "Berhasil Edit Feeder");
  //       clearEditingControllers();
  //     } else {
  //       isLoading.value = false;
  //       CustomNotification.errorNotification(
  //           "Error", "Isi Form Terlebih Dahulu");
  //     }
  //   } catch (e) {
  //     CustomNotification.errorNotification("Terjadi Kesalahan", "$e");
  //   }
  // }

  void deleteDataSchedule() async {
    String uid = auth.currentUser!.uid;
    CustomAlertDialog.showFeederAlert(
      title: "Hapus Data",
      message: "Apakah Anda Yakin untuk menghapus data? ",
      onCancel: () => Get.back(),
      onConfirm: () async {
        await firestore
            .collection("user")
            .doc(uid)
            .collection("feeder")
            .get()
            .then((QuerySnapshot querySnapshot) {
          final docId = querySnapshot.docs.first.id;
          firestore
              .collection("user")
              .doc(uid)
              .collection("feeder")
              .doc(docId)
              .delete();
        });
        Get.back();
        CustomNotification.successNotification(
            "Berhasil", "Menghapus Data Feeder");
      },
    );
  }

  void pickDate(DateTime pickStart, DateTime pickEnd) {
    start = pickStart;
    end = pickEnd;
    update();
    Get.back();
  }
}
