import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:tugas_akhir/app/model/schedule.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:tugas_akhir/app/modules/main/controllers/main_controller.dart';

// class ScheduleTile extends StatelessWidget {
//   final Map<String, dynamic> scheduleData;
//   final mainController = Get.find<MainController>();
//   ScheduleTile({super.key, required this.scheduleData});
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       // onTap: () => Get.toNamed(Routes.EDIT_JADWAL, arguments: scheduleData),
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
//           child: Container(
//             child: ListView(
//               children: [
//                 ListTile(
//                   title: Text(
//                     scheduleData['makanan'],
//                     style: const TextStyle(
//                       color: Colors.white,
//                       fontFamily: 'poppins',
//                       fontSize: 18,
//                       fontWeight: FontWeight.w700,
//                       letterSpacing: 2,
//                     ),
//                   ),
//                   onTap: () => Get.toNamed(
//                     Routes.EDIT_JADWAL,
//                   ),
//                   trailing: IconButton(
//                     onPressed: () =>
//                         mainController.deleteSchedule(Get.arguments),
//                     icon: SvgPicture.asset('assets/icons/close.svg'),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

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

class ScheduleDataGrid extends StatefulWidget {
  final Map<String, dynamic> scheduleDataSource;
  const ScheduleDataGrid({super.key, required this.scheduleDataSource});
  @override
  State<ScheduleDataGrid> createState() => _ScheduleDataGridState();
}

class _ScheduleDataGridState extends State<ScheduleDataGrid> {
  final detailJadwalController = Get.find<MainController>();
  late ScheduleDataSource scheduleDataSource;
  List<Schedule> scheduleData = [];
  final getDataFromFirestore =
      FirebaseFirestore.instance.collection("schedule").snapshots();
  Widget _buildDataGrid() {
    return StreamBuilder(
      stream: getDataFromFirestore,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasData) {
          if (scheduleData.isNotEmpty) {
            getDataGridFromDatabase(DocumentChange<Object?> data) {
              return DataGridRow(cells: [
                DataGridCell<String>(
                    columnName: 'tanggal', value: data.doc['tanggal']),
                DataGridCell<String>(
                    columnName: 'title', value: data.doc['title']),
                DataGridCell<String>(
                    columnName: 'deskripsi', value: data.doc['deskripsi']),
                DataGridCell<String>(
                    columnName: 'makanan', value: data.doc['makanan']),
                DataGridCell<String>(
                    columnName: 'minuman', value: data.doc['minuman']),
              ]);
            }

            for (var data in snapshot.data!.docChanges) {
              if (data.type == DocumentChangeType.modified) {
                if (data.oldIndex == data.newIndex) {
                  scheduleDataSource.dataGridRows[data.oldIndex] =
                      getDataGridFromDatabase(data);
                }
                scheduleDataSource.updateDataGridSource();
              } else if (data.type == DocumentChangeType.added) {
                scheduleDataSource.dataGridRows
                    .add(getDataGridFromDatabase(data));
                scheduleDataSource.updateDataGridSource();
              } else if (data.type == DocumentChangeType.removed) {
                scheduleDataSource.dataGridRows.removeAt(data.oldIndex);
                scheduleDataSource.updateDataGridSource();
              }
            }
          } else {
            for (var data in snapshot.data!.docs) {
              scheduleData.add(Schedule(
                tanggal: data['tanggal'],
                title: data['title'],
                deskripsi: data['deskripsi'],
                makanan: data['makanan'],
                minuman: data['minuman'],
              ));
            }
            scheduleDataSource = ScheduleDataSource(scheduleData);
          }
          return SfDataGrid(
            source: scheduleDataSource,
            columns: getColumns,
            columnWidthMode: ColumnWidthMode.fill,
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildDataGrid(),
    );
  }
}

class ScheduleDataSource extends DataGridSource {
  ScheduleDataSource(this.scheduleData) {
    _buildDataRow();
  }
  List<DataGridRow> dataGridRows = [];
  List<Schedule> scheduleData;
  void _buildDataRow() {
    dataGridRows = scheduleData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'tanggal', value: e.tanggal),
              DataGridCell<String>(columnName: 'title', value: e.title),
              DataGridCell<String>(columnName: 'deskripsi', value: e.deskripsi),
              DataGridCell<String>(columnName: 'makanan', value: e.makanan),
              DataGridCell<String>(columnName: 'minuman', value: e.minuman),
            ]))
        .toList();
  }

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: Text(e.value.toString()),
      );
    }).toList());
  }

  void updateDataGridSource() {
    notifyListeners();
  }
}

List<GridColumn> get getColumns {
  return <GridColumn>[
    GridColumn(
        columnName: 'tanggal',
        label: Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: const Text('Tanggal'))),
    GridColumn(
        columnName: 'title',
        label: Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.center,
            child: const Text('Title'))),
    GridColumn(
        columnName: 'deskripsi',
        label: Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.center,
            child: const Text('Deskripsi'))),
    GridColumn(
        columnName: 'makanan',
        label: Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.center,
            child: const Text('Makanan'))),
    GridColumn(
        columnName: 'minuman',
        label: Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.center,
            child: const Text('Minuman'))),
  ];
}
