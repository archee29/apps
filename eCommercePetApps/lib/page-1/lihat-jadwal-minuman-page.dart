import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // lihatjadwalminumanpageaos (34:471)
        padding: EdgeInsets.fromLTRB(1*fem, 57*fem, 0*fem, 2*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfffafafa),
          borderRadius: BorderRadius.circular(30*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupo5yht3s (CgPpuitu4GBfy3Z2mho5yH)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 10*fem, 6*fem),
              width: double.infinity,
              height: 28*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // appsnametextowX (34:557)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 111*fem, 0*fem),
                    height: double.infinity,
                    child: Text(
                      'Automatic Cat Feeder',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 17*ffem,
                        fontWeight: FontWeight.w800,
                        height: 1.5*ffem/fem,
                        color: Color(0xff060620),
                      ),
                    ),
                  ),
                  Container(
                    // logo6Qq (34:552)
                    width: 43*fem,
                    height: 26*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // iconkucing13ay (34:553)
                          left: 17*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 26*fem,
                              height: 26*fem,
                              child: Image.asset(
                                'assets/page-1/images/icon-kucing-1-JAD.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // arcticonsnewsfsF (34:554)
                          left: 0*fem,
                          top: 4*fem,
                          child: Align(
                            child: SizedBox(
                              width: 18*fem,
                              height: 18*fem,
                              child: Image.asset(
                                'assets/page-1/images/arcticons-news-3o7.png',
                                width: 18*fem,
                                height: 18*fem,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // formjadwalm9b (34:509)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 10*fem, 10*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autogroupfenjUZo (CgPstDmokcJRk4EDfZfenj)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 252*fem, 5*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // arcticonsnewsn4h (34:549)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 1*fem),
                          width: 23*fem,
                          height: 23*fem,
                          child: Image.asset(
                            'assets/page-1/images/arcticons-news-1Ym.png',
                            width: 23*fem,
                            height: 23*fem,
                          ),
                        ),
                        Text(
                          // jadwalsrq (34:548)
                          'Jadwal',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 17*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5*ffem/fem,
                            color: Color(0xffff39b0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // tabeljadwalNYh (34:510)
                    padding: EdgeInsets.fromLTRB(7*fem, 3*fem, 5*fem, 12*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0x4cff39b0)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(1*fem, 4*fem),
                          blurRadius: 4*fem,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // header3Pw (34:540)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                          width: double.infinity,
                          height: 19*fem,
                          child: Container(
                            // autogroup7bjumKw (CgPtcnPDm6gFw2GSQc7bju)
                            width: double.infinity,
                            height: 18*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // no32Z (34:547)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                  child: Text(
                                    'No',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 12*ffem,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // tanggalwtd (34:546)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42*fem, 0*fem),
                                  child: Text(
                                    'Tanggal',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 12*ffem,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // waktugLR (34:545)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 0*fem),
                                  child: Text(
                                    'Waktu',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 12*ffem,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // wadahR37 (34:544)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                  child: Text(
                                    'Wadah',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 12*ffem,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // tabungw1T (34:543)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                                  child: Text(
                                    'Tabung',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 12*ffem,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Text(
                                  // actionsGZX (34:542)
                                  'Actions',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // data1d9B (34:526)
                          margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 5*fem, 4*fem),
                          padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 3.17*fem, 0*fem),
                          width: double.infinity,
                          height: 21*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // 7q3 (34:539)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 12*fem, 0*fem),
                                child: Text(
                                  '1',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // tanggalQJM (34:534)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 20*fem, 1*fem),
                                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.77*fem, 0*fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogrouphiakJuX (CgPtSNWuHjmvmR7A1bHiAK)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.35*fem, 0*fem),
                                      padding: EdgeInsets.fromLTRB(4*fem, 1*fem, 0*fem, 1*fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff000000)),
                                        color: Color(0xffffffff),
                                      ),
                                      child: Text(
                                        '12/06/2023',
                                        style: SafeGoogleFont (
                                          'Poppins',
                                          fontSize: 10*ffem,
                                          height: 1.5*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // guidancecalendarn41 (34:536)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.06*fem),
                                      width: 14.88*fem,
                                      height: 14.52*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/guidance-calendar.png',
                                        width: 14.88*fem,
                                        height: 14.52*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // Tfw (34:533)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 1*fem),
                                child: Text(
                                  '08:00',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // literzvm (34:532)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 1*fem),
                                child: Text(
                                  '1 Liter',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // mlhqB (34:531)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21.25*fem, 1*fem),
                                child: Text(
                                  '330 mL',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // mdieditcirclexWD (34:529)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.42*fem, 4*fem),
                                width: 12.5*fem,
                                height: 12.5*fem,
                                child: Image.asset(
                                  'assets/page-1/images/mdi-edit-circle-9cM.png',
                                  width: 12.5*fem,
                                  height: 12.5*fem,
                                ),
                              ),
                              Container(
                                // typcndeletes7P (34:527)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                width: 12.67*fem,
                                height: 12.67*fem,
                                child: Image.asset(
                                  'assets/page-1/images/typcn-delete-wbP.png',
                                  width: 12.67*fem,
                                  height: 12.67*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // data2AsB (34:512)
                          margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 5*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 3.17*fem, 0*fem),
                          width: double.infinity,
                          height: 21*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // Lv5 (34:525)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 11*fem, 0*fem),
                                child: Text(
                                  '2',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // tanggal4bB (34:520)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 20*fem, 1*fem),
                                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.77*fem, 0*fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupd4bzPtM (CgPtC3bSUoxWiQX3E1D4bZ)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.35*fem, 0*fem),
                                      padding: EdgeInsets.fromLTRB(4*fem, 1*fem, 0*fem, 1*fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff000000)),
                                        color: Color(0xffffffff),
                                      ),
                                      child: Text(
                                        '12/06/2023',
                                        style: SafeGoogleFont (
                                          'Poppins',
                                          fontSize: 10*ffem,
                                          height: 1.5*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // guidancecalendargcZ (34:522)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.06*fem),
                                      width: 14.88*fem,
                                      height: 14.52*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/guidance-calendar-DJR.png',
                                        width: 14.88*fem,
                                        height: 14.52*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // cFK (34:519)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 1*fem),
                                child: Text(
                                  '17:00',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // liter7xm (34:518)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 1*fem),
                                child: Text(
                                  '1 Liter',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // mlTWq (34:517)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21.25*fem, 1*fem),
                                child: Text(
                                  '330 mL',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // mdieditcirclebN9 (34:515)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.42*fem, 4*fem),
                                width: 12.5*fem,
                                height: 12.5*fem,
                                child: Image.asset(
                                  'assets/page-1/images/mdi-edit-circle-qhT.png',
                                  width: 12.5*fem,
                                  height: 12.5*fem,
                                ),
                              ),
                              Container(
                                // typcndeletes4m (34:513)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                width: 12.67*fem,
                                height: 12.67*fem,
                                child: Image.asset(
                                  'assets/page-1/images/typcn-delete-qwo.png',
                                  width: 12.67*fem,
                                  height: 12.67*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup9nmuazm (CgPq5U7fFxAYPM9hnN9nMu)
              margin: EdgeInsets.fromLTRB(28*fem, 0*fem, 23*fem, 7*fem),
              width: double.infinity,
              height: 39*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // buttonmakananKhT (34:499)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(30.79*fem, 9*fem, 30*fem, 8.79*fem),
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0x7fff39b0)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(1*fem, 4*fem),
                          blurRadius: 4*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // streamlinefoodpizzadrinkcookfa (34:502)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.79*fem, 7.79*fem, 0*fem),
                          width: 20.43*fem,
                          height: 20.43*fem,
                          child: Image.asset(
                            'assets/page-1/images/streamline-food-pizza-drink-cook-fast-cooking-nutrition-pizza-food.png',
                            width: 20.43*fem,
                            height: 20.43*fem,
                          ),
                        ),
                        Container(
                          // dryfoods6h (34:501)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.21*fem),
                          child: Text(
                            'Dry Food',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // buttonminumana17 (34:494)
                    padding: EdgeInsets.fromLTRB(41*fem, 9*fem, 39*fem, 9*fem),
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffffffff)),
                      color: Color(0xffff39b0),
                      borderRadius: BorderRadius.circular(10*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(1*fem, 4*fem),
                          blurRadius: 4*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // materialsymbolswaterfulloutlin (34:497)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 10*fem, 0*fem),
                          width: 18*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/page-1/images/material-symbols-water-full-outline-5dB.png',
                            width: 18*fem,
                            height: 20*fem,
                          ),
                        ),
                        Text(
                          // waterhV3 (34:496)
                          'Water',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // dataminumanmingguan2XK (34:560)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 19*fem, 16*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // stokminumanmingguanANd (34:589)
                    margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 7*fem),
                    child: Text(
                      'Stok Minuman Mingguan',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupepgt61P (CgPrgfwMoSbRKKvHpEEPgT)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
                    width: double.infinity,
                    height: 83*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // totalfooddaypxy (34:579)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 73*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 24.15*fem, 8*fem, 24*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xffffffff)),
                            color: Color(0xffff39b0),
                            borderRadius: BorderRadius.circular(15*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffff39b0),
                                offset: Offset(0*fem, 5*fem),
                                blurRadius: 4*fem,
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupnesbhG5 (CgPrwfWNt3LJ7e51zAnESB)
                                margin: EdgeInsets.fromLTRB(0*fem, 1.85*fem, 14*fem, 0*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // totalfooddayEmo (34:584)
                                      'Total Food / Day',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 8*ffem,
                                        fontWeight: FontWeight.w900,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffeeeeee),
                                      ),
                                    ),
                                    Text(
                                      // kgwAR (34:583)
                                      '1,0 Kg',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // vaadinlinebarchartUw3 (34:581)
                                width: 35*fem,
                                height: 34.85*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vaadin-line-bar-chart-H53.png',
                                  width: 35*fem,
                                  height: 34.85*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // totaloutputfoodcnM (34:573)
                          padding: EdgeInsets.fromLTRB(10*fem, 24.15*fem, 8*fem, 24*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xffffffff)),
                            color: Color(0xffff39b0),
                            borderRadius: BorderRadius.circular(15*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffff39b0),
                                offset: Offset(0*fem, 5*fem),
                                blurRadius: 4*fem,
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupvka76Sd (CgProLQvW9p2nMYPfkvKa7)
                                margin: EdgeInsets.fromLTRB(0*fem, 1.85*fem, 27*fem, 0*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // totaloutputSWV (34:578)
                                      'Total Output',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 8*ffem,
                                        fontWeight: FontWeight.w900,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffeeeeee),
                                      ),
                                    ),
                                    Text(
                                      // kgwy3 (34:577)
                                      '10,0 Kg',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // vaadinlinebarchartuQ5 (34:575)
                                width: 35*fem,
                                height: 34.85*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vaadin-line-bar-chart-Hey.png',
                                  width: 35*fem,
                                  height: 34.85*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupnxsypX3 (CgPs45VMjNhroRre54nxsy)
                    width: double.infinity,
                    height: 83*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // totalwaterdayB6h (34:567)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 73*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 24.15*fem, 8*fem, 24*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xffffffff)),
                            color: Color(0xffff39b0),
                            borderRadius: BorderRadius.circular(15*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffff39b0),
                                offset: Offset(0*fem, 5*fem),
                                blurRadius: 4*fem,
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupcqzsRWq (CgPsJ9vEgvgE5CcH62CQzs)
                                margin: EdgeInsets.fromLTRB(0*fem, 1.85*fem, 5*fem, 0*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // totalwaterdayyHT (34:572)
                                      'Total Water  /  Day',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 8*ffem,
                                        fontWeight: FontWeight.w900,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffeeeeee),
                                      ),
                                    ),
                                    Text(
                                      // literhUM (34:571)
                                      '1,0 Liter',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // vaadinlinebarchartrMF (34:569)
                                width: 35*fem,
                                height: 34.85*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vaadin-line-bar-chart-aHw.png',
                                  width: 35*fem,
                                  height: 34.85*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // totaloutputwaterkSd (34:561)
                          padding: EdgeInsets.fromLTRB(10*fem, 24.15*fem, 8*fem, 24*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xffffffff)),
                            color: Color(0xffff39b0),
                            borderRadius: BorderRadius.circular(15*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffff39b0),
                                offset: Offset(0*fem, 5*fem),
                                blurRadius: 4*fem,
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogrouptjs3qys (CgPs9zVAsxPKvjyJchTJS3)
                                margin: EdgeInsets.fromLTRB(0*fem, 1.85*fem, 22*fem, 0*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // totaloutputPkV (34:566)
                                      'Total Output',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 8*ffem,
                                        fontWeight: FontWeight.w900,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffeeeeee),
                                      ),
                                    ),
                                    Text(
                                      // literk5F (34:565)
                                      '10,0 Liter',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // vaadinlinebarchartfxu (34:563)
                                width: 35*fem,
                                height: 34.85*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vaadin-line-bar-chart-S25.png',
                                  width: 35*fem,
                                  height: 34.85*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // dataminumanbulanancNM (34:620)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 19*fem, 9*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // stokminumanbulananYmo (34:649)
                    margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 7*fem),
                    child: Text(
                      'Stok Minuman Bulanan',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupinwkPXX (CgPqQ3R3YHMmhQwxehinWK)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
                    width: double.infinity,
                    height: 83*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // totalfooddayjLV (34:639)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 73*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 24.15*fem, 8*fem, 24*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xffffffff)),
                            color: Color(0xffff39b0),
                            borderRadius: BorderRadius.circular(15*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffff39b0),
                                offset: Offset(0*fem, 5*fem),
                                blurRadius: 4*fem,
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupeb2fn3s (CgPqjx1YMxPvW5sSHkEB2f)
                                margin: EdgeInsets.fromLTRB(0*fem, 1.85*fem, 14*fem, 0*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // totalfooddayiy7 (34:644)
                                      'Total Food / Day',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 8*ffem,
                                        fontWeight: FontWeight.w900,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffeeeeee),
                                      ),
                                    ),
                                    Text(
                                      // kg5Hs (34:643)
                                      '1,0 Kg',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // vaadinlinebarchartpmF (34:641)
                                width: 35*fem,
                                height: 34.85*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vaadin-line-bar-chart-3A9.png',
                                  width: 35*fem,
                                  height: 34.85*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // totaloutputfood9oX (34:633)
                          padding: EdgeInsets.fromLTRB(10*fem, 24.15*fem, 8*fem, 24*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xffffffff)),
                            color: Color(0xffff39b0),
                            borderRadius: BorderRadius.circular(15*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffff39b0),
                                offset: Offset(0*fem, 5*fem),
                                blurRadius: 4*fem,
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupkglorT3 (CgPqa38PbMBgtxP7RzkgLo)
                                margin: EdgeInsets.fromLTRB(0*fem, 1.85*fem, 27*fem, 0*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // totaloutput8vM (34:638)
                                      'Total Output',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 8*ffem,
                                        fontWeight: FontWeight.w900,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffeeeeee),
                                      ),
                                    ),
                                    Text(
                                      // kgted (34:637)
                                      '10,0 Kg',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // vaadinlinebarchartDwo (34:635)
                                width: 35*fem,
                                height: 34.85*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vaadin-line-bar-chart-zxH.png',
                                  width: 35*fem,
                                  height: 34.85*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupqtssAc9 (CgPqt2cQtU5948ZaqXQtSs)
                    width: double.infinity,
                    height: 83*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // totalwaterdayvbK (34:627)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 73*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 24.15*fem, 8*fem, 24*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xffffffff)),
                            color: Color(0xffff39b0),
                            borderRadius: BorderRadius.circular(15*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffff39b0),
                                offset: Offset(0*fem, 5*fem),
                                blurRadius: 4*fem,
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupnkhhZuB (CgPrABp9wVRaADwsw5nKHH)
                                margin: EdgeInsets.fromLTRB(0*fem, 1.85*fem, 5*fem, 0*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // totalwaterdayWpR (34:632)
                                      'Total Water  /  Day',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 8*ffem,
                                        fontWeight: FontWeight.w900,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffeeeeee),
                                      ),
                                    ),
                                    Text(
                                      // liters9B (34:631)
                                      '1,0 Liter',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // vaadinlinebarchartpaD (34:629)
                                width: 35*fem,
                                height: 34.85*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vaadin-line-bar-chart-xG9.png',
                                  width: 35*fem,
                                  height: 34.85*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // totaloutputwaterkTs (34:621)
                          padding: EdgeInsets.fromLTRB(10*fem, 24.15*fem, 8*fem, 24*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xffffffff)),
                            color: Color(0xffff39b0),
                            borderRadius: BorderRadius.circular(15*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffff39b0),
                                offset: Offset(0*fem, 5*fem),
                                blurRadius: 4*fem,
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupn1npD6Z (CgPqzwaZSZ8oJQ2ATgn1nP)
                                margin: EdgeInsets.fromLTRB(0*fem, 1.85*fem, 22*fem, 0*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // totaloutput9ku (34:626)
                                      'Total Output',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 8*ffem,
                                        fontWeight: FontWeight.w900,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffeeeeee),
                                      ),
                                    ),
                                    Text(
                                      // literVJy (34:625)
                                      '10,0 Liter',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // vaadinlinebarchartE1f (34:623)
                                width: 35*fem,
                                height: 34.85*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vaadin-line-bar-chart-GmP.png',
                                  width: 35*fem,
                                  height: 34.85*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // menubuttonZpd (34:472)
              width: 375*fem,
              height: 100*fem,
              child: Image.asset(
                'assets/page-1/images/menu-button-AHw.png',
                width: 375*fem,
                height: 100*fem,
              ),
            ),
          ],
        ),
      ),
          );
  }
}