import 'package:flutter/material.dart';
import 'package:tugas_akhir/controllers/auth_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_akhir/utils/utils.dart';
import 'package:tugas_akhir/widgets/smart_devices_box.dart';
import 'package:tugas_akhir/widgets/custom_side_menu.dart';
import 'package:tugas_akhir/widgets/info_feeder.dart';

class HomeScreen extends StatefulWidget {
  String email;
  HomeScreen({Key? key, required this.email}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.grey, size: 28),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, right: 16, bottom: 5),
            child: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/icon-kucing.png")),
          )
        ],
      ),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RichText(
                text: TextSpan(
                  text: "A ",
                  style: TextStyle(color: Colors.pinkAccent, fontSize: 20),
                  children: [
                    TextSpan(
                      text: widget.email,
                      style: TextStyle(
                          color: Colors.pink, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ", welcome back!",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Courses",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(color: Colors.pinkAccent),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const InfoFeeder(),
              const SizedBox(
                height: 20,
              ),
              // const PlaningHeader(),
              // const SizedBox(
              //   height: 15,
              // ),
              // const PlaningGrid(),
              // const SizedBox(
              //   height: 15,
              // ),
              // const Text(
              //   "Statistics",
              //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              // ),
              // const SizedBox(
              //   height: 15,
              // ),
              // const StatisticsGrid(),
              // const SizedBox(
              //   height: 15,
              // ),
              // const ActivityHeader(),
              // const ChartContainer(chart: BarChartContent())
            ],
          ),
        ),
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   double w = MediaQuery.of(context).size.width;
  //   double h = MediaQuery.of(context).size.height;
  //   return Scaffold(
  //     backgroundColor: Colors.grey[300],
  //     body: SafeArea(
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           // Padding untuk header menu
  //           Padding(
  //             padding: const EdgeInsets.only(
  //               left: AppConstant.horizontalPadding,
  //               right: AppConstant.horizontalPadding,
  //               top: AppConstant.verticalPadding,
  //             ),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Image.asset(
  //                   'assets/images/menu.png',
  //                   height: 30,
  //                   color: Colors.grey[800],
  //                 ),
  //                 Icon(
  //                   Icons.home,
  //                   size: 30,
  //                   color: Colors.grey[800],
  //                 ),
  //                 // Icon(
  //                 //   Icons.person,
  //                 //   size: 30,
  //                 //   color: Colors.grey[800],
  //                 // ),
  //               ],
  //             ),
  //           ),
  //           // jarak antar padding
  //           const SizedBox(height: 20),
  //           // padding untuk welcome text
  //           Padding(
  //             padding: const EdgeInsets.symmetric(
  //               horizontal: AppConstant.horizontalPadding,
  //             ),
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Text(
  //                   'Welcome Home,',
  //                   style: TextStyle(
  //                     fontSize: 16,
  //                     color: Colors.grey[700],
  //                   ),
  //                 ),
  //                 Text(
  //                   widget.email,
  //                   style: GoogleFonts.bebasNeue(
  //                     fontSize: 40,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //           const SizedBox(height: 5),
  //           // padding untuk line antar menu
  //           const Padding(
  //             padding: EdgeInsets.symmetric(
  //               horizontal: AppConstant.horizontalPadding,
  //             ),
  //             child: Divider(
  //               color: Colors.grey,
  //               thickness: 1,
  //             ),
  //           ),
  //           const SizedBox(height: 5),
  //           // padding menu smart Button
  //           Padding(
  //             padding: const EdgeInsets.symmetric(
  //               horizontal: AppConstant.horizontalPadding,
  //             ),
  //             child: Text(
  //               'Smart Button',
  //               style: TextStyle(
  //                 fontSize: 20,
  //                 fontWeight: FontWeight.bold,
  //                 color: Colors.grey[800],
  //               ),
  //             ),
  //           ),
  //           // Kotak menu smart button
  //           Expanded(
  //             child: GridView.builder(
  //               itemCount: AppData.smartDevices.length,
  //               physics: const NeverScrollableScrollPhysics(),
  //               padding: const EdgeInsets.only(
  //                 left: 15,
  //                 right: 15,
  //               ),
  //               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //                 crossAxisCount: 2,
  //                 childAspectRatio: 1 / 1.2,
  //               ),
  //               itemBuilder: (context, index) {
  //                 return SmartDeviceBoxWidget(
  //                   smartDeviceName: AppData.smartDevices[index][0],
  //                   iconPath: AppData.smartDevices[index][1],
  //                   isPowerOn: AppData.smartDevices[index][2],
  //                   onChanged: (bool newValue) {
  //                     setState(() {
  //                       AppData.smartDevices[index][2] = newValue;
  //                     });
  //                   },
  //                 );
  //               },
  //             ),
  //           ),
  //           const SizedBox(height: 5),
  //           // line padding
  //           const Padding(
  //             padding: EdgeInsets.symmetric(
  //               horizontal: AppConstant.horizontalPadding,
  //             ),
  //             child: Divider(
  //               color: Colors.grey,
  //               thickness: 1,
  //             ),
  //           ),
  //           const SizedBox(height: 5),
  //           // padding button logout
  //           Padding(
  //             padding: const EdgeInsets.symmetric(
  //               horizontal: AppConstant.horizontalPadding,
  //             ),
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.center,
  //               children: [
  //                 GestureDetector(
  //                   onTap: () {
  //                     AuthController.instance.logOut();
  //                   },
  //                   child: Container(
  //                     width: w * 0.5,
  //                     height: h * 0.08,
  //                     decoration: BoxDecoration(
  //                       borderRadius: BorderRadius.circular(30),
  //                       image: DecorationImage(
  //                         image: AssetImage("assets/images/button_login.png"),
  //                         fit: BoxFit.cover,
  //                       ),
  //                     ),
  //                     child: Center(
  //                       child: Text(
  //                         "Keluar",
  //                         style: TextStyle(
  //                           fontSize: 35,
  //                           fontWeight: FontWeight.bold,
  //                           color: Colors.white,
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
