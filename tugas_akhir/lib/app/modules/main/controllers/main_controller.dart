import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_alert_dialog.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_notification.dart';

class MainController extends GetxController {
  DateTime? start;
  DateTime end = DateTime.now();
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseDatabase database = FirebaseDatabase.instance;
  var selectedDateSchedule = DateTime.now().obs;
  FirebaseDatabase firebaseDatabase = FirebaseDatabase.instance;

  late DatabaseReference servoRef;
  RxBool servoSwitched = false.obs;
  RxBool pumpSwitched = false.obs;

  void servoToggled() {
    servoSwitched.value = servoSwitched.value ? false : true;
    // servoSwitched = servoRef.child('UsersData')
    //     .child(uid)
    //     .child('jadwalPagi')
    //     .child("servo")
    //     .set("on") as RxBool;
  }

  void pumpToggled() => pumpSwitched.value = pumpSwitched.value ? false : true;

  Stream<DocumentSnapshot<Map<String, dynamic>>> streamUser() async* {
    String uid = auth.currentUser!.uid;
    yield* firestore.collection("user").doc(uid).snapshots();
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getAllSchedule() async {
    String uid = auth.currentUser!.uid;
    if (start == null) {
      QuerySnapshot<Map<String, dynamic>> query = await firestore
          .collection("user")
          .doc(uid)
          .collection("schedule")
          .where("date", isLessThan: end.toIso8601String())
          .orderBy("date", descending: true)
          .get();
      return query;
    } else {
      QuerySnapshot<Map<String, dynamic>> query = await firestore
          .collection("user")
          .doc(uid)
          .collection("schedule")
          .where("date", isGreaterThan: start!.toIso8601String())
          .where("date",
              isLessThan: end.add(const Duration(days: 1)).toIso8601String())
          .orderBy("date", descending: true)
          .get();
      return query;
    }
  }

  void pickDate(DateTime pickStart, DateTime pickEnd) {
    start = pickStart;
    end = pickEnd;
    update();
    Get.back();
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
