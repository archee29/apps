import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ScheduleTile extends StatefulWidget {
  const ScheduleTile({super.key});

  @override
  State<ScheduleTile> createState() => _ScheduleTileState();
}

class _ScheduleTileState extends State<ScheduleTile> {
  late final Map<String, dynamic> scheduleData;
  final getDataSchedule =
      FirebaseFirestore.instance.collection("schedule").snapshots();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// class ScheduleTile extends StatelessWidget {
//   final Map<String, dynamic> scheduleData;
//   const ScheduleTile({super.key, required this.scheduleData});

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () => Get.toNamed(Routes.EDIT_JADWAL, arguments: scheduleData),
//       borderRadius: BorderRadius.circular(8),
//       child: Container(
//         width: MediaQuery.of(context).size.width,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(8),
//           border: Border.all(width: 3, color: AppColors.primaryExtraSoft),
//         ),
//         padding:
//             const EdgeInsets.only(left: 24, top: 20, right: 29, bottom: 20),
//         child: SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           ),
//         ),
//       ),
//     );
//   }
// }
