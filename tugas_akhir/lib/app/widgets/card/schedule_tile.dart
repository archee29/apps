import 'package:flutter/material.dart';

// class ScheduleTile extends StatelessWidget {
//   final Map<String, dynamic> scheduleData;
//   const ScheduleTile({super.key, required this.scheduleData});
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         const SizedBox(height: 12.0),
//         Container(
//           decoration: const BoxDecoration(
//             color: Colors.grey,
//             borderRadius: BorderRadius.all(
//               Radius.circular(12),
//             ),
//           ),
//           child: SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: DataTable(
//               columns: const <DataColumn>[
//                 DataColumn(
//                   label: Text(
//                     "No",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontFamily: 'poppins',
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//                 DataColumn(
//                   label: Text(
//                     "Tanggal",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontFamily: 'poppins',
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//                 DataColumn(
//                   label: Text(
//                     "Waktu",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontFamily: 'poppins',
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//                 DataColumn(
//                   label: Text(
//                     "Wadah",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontFamily: 'poppins',
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//                 DataColumn(
//                   label: Text(
//                     "Tabung",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontFamily: 'poppins',
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//                 DataColumn(
//                   label: Text(
//                     "Action",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontFamily: 'poppins',
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//               ],
//               rows: [
//                 DataRow(
//                   cells: <DataCell>[
//                     DataCell(
//                       Text(
//                         (scheduleData["tanggal"] == null)
//                             ? "-"
//                             : scheduleData["tanggal"],
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontFamily: 'poppins',
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                     DataCell(
//                       Text(
//                         (scheduleData["waktu"] == null)
//                             ? "="
//                             : scheduleData["waktu"],
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontFamily: 'poppins',
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                     DataCell(
//                       Text(
//                         (scheduleData["makanan"] == null)
//                             ? "-"
//                             : scheduleData["makanan"],
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontFamily: 'poppins',
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                     DataCell(
//                       Text(
//                         (scheduleData["minuman"] == null)
//                             ? "-"
//                             : scheduleData["minuman"],
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontFamily: 'poppins',
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                     const DataCell(
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Icon(
//                             Icons.delete,
//                             color: Colors.red,
//                             size: 50.0,
//                             semanticLabel: 'Delete Data',
//                           ),
//                           Icon(
//                             Icons.delete,
//                             color: Colors.blue,
//                             size: 50.0,
//                             semanticLabel: 'Edit Data',
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

class ScheduleTile extends StatelessWidget {
  final Map<String, dynamic> scheduleData;
  const ScheduleTile({super.key, required this.scheduleData});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(height: 12.0),
        Container(
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text(
                    "No",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Tanggal",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Waktu",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Wadah",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Tabung",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Action",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text(
                        scheduleData["tanggal"],
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        scheduleData["waktu"],
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        scheduleData["wadah"],
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        scheduleData["tabung"],
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const DataCell(
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.delete,
                            color: Colors.red,
                            size: 50.0,
                            semanticLabel: 'Delete Data',
                          ),
                          Icon(
                            Icons.delete,
                            color: Colors.blue,
                            size: 50.0,
                            semanticLabel: 'Edit Data',
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
    // return InkWell(
    //   onTap: () => Get.toNamed(Routes.EDIT_JADWAL, arguments: scheduleData),
    //   borderRadius: BorderRadius.circular(8),
    //   child: Container(
    //     width: MediaQuery.of(context).size.width,
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(8),
    //       border: Border.all(
    //         width: 3,
    //         color: AppColors.primaryExtraSoft,
    //       ),
    //     ),
    //     padding:
    //         const EdgeInsets.only(left: 24, top: 20, right: 29, bottom: 20),
    //     child: SingleChildScrollView(
    //       scrollDirection: Axis.horizontal,
    //       child: Row(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Row(
    //             children: [
    //               Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   const Text(
    //                     "Makanan",
    //                     style: TextStyle(fontSize: 12),
    //                   ),
    //                   const SizedBox(height: 6),
    //                   Text(
    //                     scheduleData["makanan"],
    //                     style: const TextStyle(
    //                       fontSize: 14,
    //                       fontWeight: FontWeight.w600,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               const SizedBox(width: 24),
    //               Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   const Text(
    //                     "Minuman",
    //                     style: TextStyle(fontSize: 12),
    //                   ),
    //                   const SizedBox(height: 6),
    //                   Text(
    //                     scheduleData["minuman"],
    //                     style: const TextStyle(
    //                       fontSize: 14,
    //                       fontWeight: FontWeight.w600,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ],
    //           ),
    //           Text(
    //             scheduleData["tanggal"],
    //             style: TextStyle(
    //               fontSize: 10,
    //               color: AppColors.secondarySoft,
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}


// class DynamicDataTable extends StatefulWidget {
//   const DynamicDataTable({super.key});

//   @override
//   State<DynamicDataTable> createState() => _DynamicDataTableState();
// }
// class _DynamicDataTableState extends State<DynamicDataTable> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width * 0.8,
//       // child: DynamicTable(columns: , rows: ,),
//     );
//   }
// }
