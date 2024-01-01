import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:tugas_akhir/app/modules/main/controllers/main_controller.dart';

// class ScheduleDataIndex extends StatefulWidget {
//   const ScheduleDataIndex({super.key});
//   @override
//   State<ScheduleDataIndex> createState() => _ScheduleDataIndexState();
// }
// class _ScheduleDataIndexState extends State<ScheduleDataIndex> {
//   late ScheduleDataSource scheduleDataSource;
//   late List<ScheduleDataSource> scheduleData = [];
//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//   FirebaseAuth auth = FirebaseAuth.instance;
//   Stream<QuerySnapshot<Map<String, dynamic>>> streamLastSchedule() async* {
//     String uid = auth.currentUser!.uid;
//     yield* firestore
//         .collection("user")
//         .doc(uid)
//         .collection("schedule")
//         .orderBy("date", descending: true)
//         .limitToLast(5)
//         .snapshots();
//   }
//   @override
//   void initState() {
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: StreamBuilder<QuerySnapshot>(
//         stream: streamLastSchedule(),
//         builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
//           if (!snapshot.hasData) return const LinearProgressIndicator();
//           scheduleData.clear();
//           for (var doc in snapshot.data!.docs) {
//             scheduleData
//                 .add(ScheduleDataSource(doc.data() as List<MainController>));
//           }
//           scheduleDataSource =
//               ScheduleDataSource(scheduleData.cast<MainController>());
//           return SfDataGrid(
//             source: scheduleDataSource,
//             columnWidthMode: ColumnWidthMode.fill,
//             columns: <GridColumn>[
//               GridColumn(
//                 columnName: "tanggal",
//                 label: Container(
//                   padding: const EdgeInsets.all(16.0),
//                   alignment: Alignment.center,
//                   child: const Text("Tanggal"),
//                 ),
//               ),
//               GridColumn(
//                 columnName: "waktu",
//                 label: Container(
//                   padding: const EdgeInsets.all(16.0),
//                   alignment: Alignment.center,
//                   child: const Text("Waktu"),
//                 ),
//               ),
//               GridColumn(
//                 columnName: "makanan",
//                 label: Container(
//                   padding: const EdgeInsets.all(16.0),
//                   alignment: Alignment.center,
//                   child: const Text("makanan"),
//                 ),
//               ),
//               GridColumn(
//                 columnName: "minuman",
//                 label: Container(
//                   padding: const EdgeInsets.all(16.0),
//                   alignment: Alignment.center,
//                   child: const Text("minuman"),
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }

// class ScheduleDataSource extends DataGridSource {
//   ScheduleDataSource(this.scheduleData) {
//     buildDataRow();
//   }
//   MainController mainState = Get.put(MainController());
//   List<DataGridRow> schedule = [];
//   List<MainController> scheduleData;
//   void buildDataRow() {
//     schedule = scheduleData
//         .map<DataGridRow>(
//           (e) => DataGridRow(
//             cells: [
//               DataGridCell<String>(
//                 columnName: "tanggal",
//                 value: e.tanggal,
//               ),
//               DataGridCell<String>(
//                 columnName: "waktu",
//                 value: e.waktu,
//               ),
//               DataGridCell<String>(
//                 columnName: "makanan",
//                 value: e.makanan,
//               ),
//               DataGridCell<String>(
//                 columnName: "minuman",
//                 value: e.minuman,
//               ),
//             ],
//           ),
//         )
//         .toList();
//   }
//   @override
//   List<DataGridRow> get rows => schedule;
//   @override
//   DataGridRowAdapter buildRow(DataGridRow row) {
//     return DataGridRowAdapter(
//         cells: row.getCells().map<Widget>((e) {
//       return Container(
//         alignment: Alignment.center,
//         padding: const EdgeInsets.all(8.0),
//         child: Text(e.value.toString()),
//       );
//     }).toList());
//   }
// }

// ---------------------------------------------- //

// // class ScheduleDataTable extends StatelessWidget {
// //   final Map<String, dynamic> scheduleData;
// //   ScheduleDataTable({super.key, required this.scheduleData});
// //   late final ScheduleDataSource scheduleDataSource;
// //   final getDataFromFirestore =
// //       FirebaseFirestore.instance.collection("schedule").snapshots();
// //   Widget _buildDataGrid() {
// //     return StreamBuilder(
// //       stream: getDataFromFirestore,
// //       builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
// //         if (snapshot.hasData) {
// //           if (scheduleData.isNotEmpty) {
// //             getDataGridFromDatabase(DocumentChange<Object?> data) {
// //               return DataGridRow(cells: [
// //                 DataGridCell<String>(
// //                     columnName: 'tanggal', value: data.doc['tanggal']),
// //                 DataGridCell<String>(
// //                     columnName: 'title', value: data.doc['title']),
// //                 DataGridCell<String>(
// //                     columnName: 'deskripsi', value: data.doc['deskripsi']),
// //                 DataGridCell<String>(
// //                     columnName: 'makanan', value: data.doc['makanan']),
// //                 DataGridCell<String>(
// //                     columnName: 'minuman', value: data.doc['minuman']),
// //               ]);
// //             }
// //             for (var data in snapshot.data!.docChanges) {
// //               if (data.type == DocumentChangeType.modified) {
// //                 if (data.oldIndex == data.newIndex) {
// //                   scheduleDataSource.dataGridRows[data.oldIndex] =
// //                       getDataGridFromDatabase(data);
// //                 }
// //                 scheduleDataSource.updateDataGridSource();
// //               } else if (data.type == DocumentChangeType.added) {
// //                 scheduleDataSource.dataGridRows
// //                     .add(getDataGridFromDatabase(data));
// //                 scheduleDataSource.updateDataGridSource();
// //               } else if (data.type == DocumentChangeType.removed) {
// //                 scheduleDataSource.dataGridRows.removeAt(data.oldIndex);
// //                 scheduleDataSource.updateDataGridSource();
// //               }
// //             }
// //           } else {
// //             for (var data in snapshot.data!.docs) {
// //               scheduleData.map(Schedule(
// //                 tanggal: data['tanggal'],
// //                 title: data['title'],
// //                 deskripsi: data['deskripsi'],
// //                 makanan: data['makanan'],
// //                 minuman: data['minuman'],
// //               ) as MapEntry Function(String key, dynamic value));
// //             }
// //             scheduleDataSource =
// //                 ScheduleDataSource(scheduleData as List<Schedule>);
// //           }
// //           return SfDataGrid(
// //             source: scheduleDataSource,
// //             columns: getColumns,
// //             columnWidthMode: ColumnWidthMode.fill,
// //           );
// //         } else {
// //           return const Center(child: CircularProgressIndicator());
// //         }
// //       },
// //     );
// //   }
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       child: _buildDataGrid(),
// //     );
// //   }
// // }

// class ScheduleDataSource extends DataGridSource {
//   ScheduleDataSource(this.scheduleData) {
//     _buildDataRow();
//   }
//   List<DataGridRow> dataGridRows = [];
//   List<Schedule> scheduleData;
//   void _buildDataRow() {
//     dataGridRows = scheduleData
//         .map<DataGridRow>((e) => DataGridRow(cells: [
//               DataGridCell<String>(columnName: 'tanggal', value: e.tanggal),
//               DataGridCell<String>(columnName: 'title', value: e.title),
//               DataGridCell<String>(columnName: 'deskripsi', value: e.deskripsi),
//               DataGridCell<String>(columnName: 'makanan', value: e.makanan),
//               DataGridCell<String>(columnName: 'minuman', value: e.minuman),
//             ]))
//         .toList();
//   }

//   @override
//   List<DataGridRow> get rows => dataGridRows;
//   @override
//   DataGridRowAdapter buildRow(DataGridRow row) {
//     return DataGridRowAdapter(
//         cells: row.getCells().map<Widget>((e) {
//       return Container(
//         alignment: Alignment.center,
//         padding: const EdgeInsets.all(8.0),
//         child: Text(e.value.toString()),
//       );
//     }).toList());
//   }

//   void updateDataGridSource() {
//     notifyListeners();
//   }
// }

// List<GridColumn> get getColumns {
//   return <GridColumn>[
//     GridColumn(
//         columnName: 'tanggal',
//         label: Container(
//             padding: const EdgeInsets.all(16.0),
//             alignment: Alignment.center,
//             child: const Text('Tanggal'))),
//     GridColumn(
//         columnName: 'title',
//         label: Container(
//             padding: const EdgeInsets.all(8.0),
//             alignment: Alignment.center,
//             child: const Text('Title'))),
//     GridColumn(
//         columnName: 'deskripsi',
//         label: Container(
//             padding: const EdgeInsets.all(8.0),
//             alignment: Alignment.center,
//             child: const Text('Deskripsi'))),
//     GridColumn(
//         columnName: 'makanan',
//         label: Container(
//             padding: const EdgeInsets.all(8.0),
//             alignment: Alignment.center,
//             child: const Text('Makanan'))),
//     GridColumn(
//         columnName: 'minuman',
//         label: Container(
//             padding: const EdgeInsets.all(8.0),
//             alignment: Alignment.center,
//             child: const Text('Minuman'))),
//   ];
// }



