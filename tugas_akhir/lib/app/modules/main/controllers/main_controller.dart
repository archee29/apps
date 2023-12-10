import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_alert_dialog.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_notification.dart';

class MainController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<DocumentSnapshot<Map<String, dynamic>>> streamUser() async* {
    String uid = auth.currentUser!.uid;
    yield* firestore.collection("user").doc(uid).snapshots();
  }

  // Stream<DocumentSnapshot<Map<String, dynamic>>> streamTodayFeeder() async* {
  //   String uid = auth.currentUser!.uid;
  //   String todayDocId =
  //       DateFormat.yMd().format(DateTime.now()).replaceAll("/", "-");
  //   yield* firestore
  //       .collection("user")
  //       .doc(uid)
  //       .collection("feeder")
  //       .doc(todayDocId)
  //       .snapshots();
  // }

  Future<QuerySnapshot<Object?>> getSchedule() {
    CollectionReference schedule = firestore.collection("schedule");
    return schedule.get();
  }

  Stream<DocumentSnapshot<Map<String, dynamic>>> streamSchedule() async* {
    String uid = auth.currentUser!.uid;
    yield* firestore.collection("schedule").doc(uid).snapshots();
  }

  Stream<QuerySnapshot<Object?>> streamData() {
    CollectionReference schedule = firestore.collection("schedule");
    return schedule.orderBy("time", descending: true).snapshots();
  }

  Future<void> deleteSchedule(String docId) async {
    DocumentReference docRef = firestore.collection("schedule").doc(docId);
    try {
      CustomAlertDialog.showFeederAlert(
        title: "Hapus Data",
        message: "Yakin Menghapus Data Ini?",
        onConfirm: () async {
          await docRef.delete();
          Get.back();
        },
        onCancel: () => Get.back(),
      );
    } catch (e) {
      CustomNotification.errorNotification("Terjadi Kesalahan", "$e");
    }
  }

  void logout() async {
    await auth.signOut();
    Get.offAllNamed(Routes.LOGIN);
  }
}
