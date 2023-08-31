import 'package:flutter/material.dart';
import 'package:tugas_akhir/auth_controller.dart';
import 'package:tugas_akhir/widgets/custom_menu_button.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:tugas_akhir/utils/utils.dart';
// import 'package:tugas_akhir/widgets/smart_devices_box.dart';
import 'package:tugas_akhir/widgets/custom_side_menu.dart';
import 'package:tugas_akhir/widgets/info_feeder.dart';

// class HomeScreen extends StatefulWidget {
//   static String routeName = "/homeScreen";
//   var email;
//   HomeScreen({Key? key, required this.email}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   // Widget build(BuildContext context) {
//   //   // return Scaffold(
//   //   //   backgroundColor: Colors.white,
//   //   //   appBar: AppBar(
//   //   //     elevation: 0,
//   //   //     backgroundColor: Colors.transparent,
//   //   //     iconTheme: const IconThemeData(color: Colors.grey, size: 28),
//   //   //     actions: [
//   //   //       IconButton(
//   //   //         onPressed: () {},
//   //   //         icon: const Icon(
//   //   //           Icons.search,
//   //   //           color: Colors.grey,
//   //   //         ),
//   //   //       ),
//   //   //       IconButton(
//   //   //         onPressed: () {},
//   //   //         icon: const Icon(
//   //   //           Icons.notifications,
//   //   //           color: Colors.grey,
//   //   //         ),
//   //   //       ),
//   //   //       Container(
//   //   //         margin: const EdgeInsets.only(top: 5, right: 16, bottom: 5),
//   //   //         child: const CircleAvatar(
//   //   //             backgroundImage: AssetImage("assets/images/icon-kucing.png"),
//   //   //             backgroundColor: Colors.pinkAccent),
//   //   //       )
//   //   //     ],
//   //   //   ),
//   //   //   drawer: const SideMenu(),
//   //   //   body: SingleChildScrollView(
//   //   //     physics: const BouncingScrollPhysics(),
//   //   //     child: Padding(
//   //   //       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
//   //   //       child: Column(
//   //   //         crossAxisAlignment: CrossAxisAlignment.stretch,
//   //   //         children: [
//   //   //           RichText(
//   //   //             text: TextSpan(
//   //   //               text: "Hello ",
//   //   //               style:
//   //   //                   const TextStyle(color: Colors.pinkAccent, fontSize: 20),
//   //   //               children: [
//   //   //                 TextSpan(
//   //   //                   text: widget.email,
//   //   //                   style: const TextStyle(
//   //   //                       color: Colors.pink, fontWeight: FontWeight.bold),
//   //   //                 ),
//   //   //                 const TextSpan(
//   //   //                   text: ", welcome back!",
//   //   //                 ),
//   //   //               ],
//   //   //             ),
//   //   //           ),
//   //   //           const SizedBox(
//   //   //             height: 15,
//   //   //           ),
//   //   //           const Row(
//   //   //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //   //             children: [
//   //   //               Text(
//   //   //                 "My Courses",
//   //   //                 style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//   //   //               ),
//   //   //               Text(
//   //   //                 "View All",
//   //   //                 style: TextStyle(color: Colors.pinkAccent),
//   //   //               ),
//   //   //             ],
//   //   //           ),
//   //   //           const SizedBox(
//   //   //             height: 10,
//   //   //           ),
//   //   //           const InfoFeeder(),
//   //   //           const SizedBox(
//   //   //             height: 20,
//   //   //           ),
//   //   //           // const PlaningHeader(),
//   //   //           // const SizedBox(
//   //   //           //   height: 15,
//   //   //           // ),
//   //   //           // const PlaningGrid(),
//   //   //           // const SizedBox(
//   //   //           //   height: 15,
//   //   //           // ),
//   //   //           // const Text(
//   //   //           //   "Statistics",
//   //   //           //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//   //   //           // ),
//   //   //           // const SizedBox(
//   //   //           //   height: 15,
//   //   //           // ),
//   //   //           // const StatisticsGrid(),
//   //   //           // const SizedBox(
//   //   //           //   height: 15,
//   //   //           // ),
//   //   //           // const ActivityHeader(),
//   //   //           // const ChartContainer(chart: BarChartContent())
//   //   //           // const MenuButton(),
//   //   //         ],
//   //   //       ),
//   //   //     ),
//   //   //   ),
//   //   // );
  
//   // }
// }
