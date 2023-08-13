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
        // lihatjadwalmakananpage7X7 (30:224)
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
              // autogroupk64pxGq (CgPu86shedEYnM1HN8k64P)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 10*fem, 14*fem),
              width: double.infinity,
              height: 28*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // appsnametextfBF (30:343)
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
                    // logokyP (30:336)
                    width: 43*fem,
                    height: 26*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // iconkucing1Jzu (30:337)
                          left: 17*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 26*fem,
                              height: 26*fem,
                              child: Image.asset(
                                'assets/page-1/images/icon-kucing-1-E6d.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // arcticonsnewsS5X (30:361)
                          left: 0*fem,
                          top: 4*fem,
                          child: Align(
                            child: SizedBox(
                              width: 18*fem,
                              height: 18*fem,
                              child: Image.asset(
                                'assets/page-1/images/arcticons-news.png',
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
              // formjadwalYuF (30:365)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 10*fem, 11*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autogroupvmb5rQ9 (CgPxZLV4SGqS1t7hbevmb5)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 252*fem, 5*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // arcticonsnewsNdP (30:358)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 1*fem),
                          width: 23*fem,
                          height: 23*fem,
                          child: Image.asset(
                            'assets/page-1/images/arcticons-news-me9.png',
                            width: 23*fem,
                            height: 23*fem,
                          ),
                        ),
                        Text(
                          // jadwalJX3 (30:364)
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
                    // tabeljadwal2hw (32:391)
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
                          // headeruFw (34:412)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                          width: double.infinity,
                          height: 19*fem,
                          child: Container(
                            // autogroupy8ym2bT (CgPyFu9odkSsxwU6Bdy8yM)
                            width: double.infinity,
                            height: 18*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // noN9X (32:392)
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
                                  // tanggalGkh (32:393)
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
                                  // waktumSZ (32:394)
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
                                  // wadahGu7 (32:395)
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
                                  // tabungzq7 (32:396)
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
                                  // actionsY5w (32:397)
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
                          // data1tfb (34:411)
                          margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 5*fem, 4*fem),
                          padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 3.17*fem, 0*fem),
                          width: double.infinity,
                          height: 21*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // oGm (32:398)
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
                                // tanggaljgD (34:410)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 20*fem, 1*fem),
                                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.77*fem, 0*fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupg4co3S1 (CgPy4pdvtid642kCQGg4Co)
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
                                      // guidancecalendarhWZ (32:401)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.06*fem),
                                      width: 14.88*fem,
                                      height: 14.52*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/guidance-calendar-oDT.png',
                                        width: 14.88*fem,
                                        height: 14.52*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // 233 (32:403)
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
                                // kgkzd (32:404)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30*fem, 1*fem),
                                child: Text(
                                  '1 Kg',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // grfbo (32:405)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28.25*fem, 1*fem),
                                child: Text(
                                  '120 Gr',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // mdieditcircleCbj (32:406)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.42*fem, 4*fem),
                                width: 12.5*fem,
                                height: 12.5*fem,
                                child: Image.asset(
                                  'assets/page-1/images/mdi-edit-circle-WC1.png',
                                  width: 12.5*fem,
                                  height: 12.5*fem,
                                ),
                              ),
                              Container(
                                // typcndeleteW6d (32:408)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                width: 12.67*fem,
                                height: 12.67*fem,
                                child: Image.asset(
                                  'assets/page-1/images/typcn-delete-wCM.png',
                                  width: 12.67*fem,
                                  height: 12.67*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // data2dS9 (34:427)
                          margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 5*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 3.17*fem, 0*fem),
                          width: double.infinity,
                          height: 21*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // iTb (34:440)
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
                                // tanggal2z5 (34:435)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 20*fem, 1*fem),
                                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.77*fem, 0*fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupebkdy8d (CgPxqzfyC3sxgTAxEUebKD)
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
                                      // guidancecalendar26u (34:437)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.06*fem),
                                      width: 14.88*fem,
                                      height: 14.52*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/guidance-calendar-BxM.png',
                                        width: 14.88*fem,
                                        height: 14.52*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // Krh (34:434)
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
                                // kgfff (34:433)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30*fem, 1*fem),
                                child: Text(
                                  '1 Kg',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // grC9o (34:432)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28.25*fem, 1*fem),
                                child: Text(
                                  '120 Gr',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // mdieditcircle7Xf (34:430)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.42*fem, 4*fem),
                                width: 12.5*fem,
                                height: 12.5*fem,
                                child: Image.asset(
                                  'assets/page-1/images/mdi-edit-circle.png',
                                  width: 12.5*fem,
                                  height: 12.5*fem,
                                ),
                              ),
                              Container(
                                // typcndeleteF85 (34:428)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                width: 12.67*fem,
                                height: 12.67*fem,
                                child: Image.asset(
                                  'assets/page-1/images/typcn-delete.png',
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
              // autogroupxppbhEy (CgPuGvxKjGSug7CsDoxPpB)
              margin: EdgeInsets.fromLTRB(28*fem, 0*fem, 23*fem, 11*fem),
              width: double.infinity,
              height: 39*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // buttonmakanan1mT (32:377)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(30.79*fem, 9*fem, 30*fem, 8.79*fem),
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
                          // streamlinefoodpizzadrinkcookfa (32:370)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.79*fem, 7.79*fem, 0*fem),
                          width: 20.43*fem,
                          height: 20.43*fem,
                          child: Image.asset(
                            'assets/page-1/images/streamline-food-pizza-drink-cook-fast-cooking-nutrition-pizza-food-JJm.png',
                            width: 20.43*fem,
                            height: 20.43*fem,
                          ),
                        ),
                        Container(
                          // dryfoodQ2u (32:369)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.21*fem),
                          child: Text(
                            'Dry Food',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // buttonminumanj5B (32:378)
                    padding: EdgeInsets.fromLTRB(41*fem, 9*fem, 39*fem, 9*fem),
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
                          // materialsymbolswaterfulloutlin (32:388)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 10*fem, 0*fem),
                          width: 18*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/page-1/images/material-symbols-water-full-outline.png',
                            width: 18*fem,
                            height: 20*fem,
                          ),
                        ),
                        Text(
                          // waterXmj (32:380)
                          'Water',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // datamingguanUws (34:441)
              margin: EdgeInsets.fromLTRB(19*fem, 0*fem, 16*fem, 14*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // stokpakanmingguanQ4q (34:470)
                    margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 7*fem),
                    child: Text(
                      'Stok Pakan Mingguan',
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
                    // autogroupfcudrxR (CgPwBNnJ1kE6RYeVMJfcuD)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
                    width: double.infinity,
                    height: 83*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // totalfooddayadX (34:460)
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
                                // autogroupkgtyr5F (CgPwRhhkpg3WUZEc8tkGTy)
                                margin: EdgeInsets.fromLTRB(0*fem, 1.85*fem, 14*fem, 0*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // totalfooddaybHj (34:465)
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
                                      // kgupD (34:464)
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
                                // vaadinlinebarchartTaq (34:462)
                                width: 35*fem,
                                height: 34.85*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vaadin-line-bar-chart-ULy.png',
                                  width: 35*fem,
                                  height: 34.85*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // totaloutputfoodCHX (34:454)
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
                                // autogroupdaa36do (CgPwH87ibQgCN2sW3rDAA3)
                                margin: EdgeInsets.fromLTRB(0*fem, 1.85*fem, 27*fem, 0*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // totaloutputaos (34:459)
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
                                      // kgXz1 (34:458)
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
                                // vaadinlinebarcharttZf (34:456)
                                width: 35*fem,
                                height: 34.85*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vaadin-line-bar-chart-DHB.png',
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
                    // autogroupyzesqE1 (CgPwYXqi6JVV8QkMqWYzes)
                    width: double.infinity,
                    height: 83*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // totalwaterdayPWR (34:448)
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
                                // autogroupgpwuEX3 (CgPwsByHf6JQ2tVSdPgPwu)
                                margin: EdgeInsets.fromLTRB(0*fem, 1.85*fem, 5*fem, 0*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // totalwaterdayMbf (34:453)
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
                                      // liter6p9 (34:452)
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
                                // vaadinlinebarchart3zH (34:450)
                                width: 35*fem,
                                height: 34.85*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vaadin-line-bar-chart-TQM.png',
                                  width: 35*fem,
                                  height: 34.85*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // totaloutputwatery7F (34:442)
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
                                // autogroupl8wb4eV (CgPwecVuooQKSYkgEEL8WB)
                                margin: EdgeInsets.fromLTRB(0*fem, 1.85*fem, 22*fem, 0*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // totaloutputPRs (34:447)
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
                                      // literYJm (34:446)
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
                                // vaadinlinebarchartSuw (34:444)
                                width: 35*fem,
                                height: 34.85*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vaadin-line-bar-chart-DmB.png',
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
              // autogroupsvmrmhK (CgPuSm1HDR3TgpkNA1sVMR)
              width: 375*fem,
              height: 310*fem,
              child: Stack(
                children: [
                  Positioned(
                    // menubuttonKiq (30:225)
                    left: 0*fem,
                    top: 210*fem,
                    child: Align(
                      child: SizedBox(
                        width: 375*fem,
                        height: 100*fem,
                        child: Image.asset(
                          'assets/page-1/images/menu-button-yNq.png',
                          width: 375*fem,
                          height: 100*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // databulananSYZ (34:590)
                    left: 21*fem,
                    top: 0*fem,
                    child: Container(
                      width: 339*fem,
                      height: 212*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // stokpakanbulananx17 (34:619)
                            margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 7*fem),
                            child: Text(
                              'Stok Pakan Bulanan',
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
                            // autogroupjqdvgC1 (CgPub66jbJZj27GzURjQDV)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
                            width: double.infinity,
                            height: 83*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // totalfooddaynkq (34:609)
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
                                        // autogroupvfe7ovq (CgPuqfWnFcEBrMhb2eVFE7)
                                        margin: EdgeInsets.fromLTRB(0*fem, 1.85*fem, 14*fem, 0*fem),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              // totalfooddayZ9K (34:614)
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
                                              // kg4rm (34:613)
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
                                        // vaadinlinebarchartRSR (34:611)
                                        width: 35*fem,
                                        height: 34.85*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vaadin-line-bar-chart-re5.png',
                                          width: 35*fem,
                                          height: 34.85*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // totaloutputfoodmFP (34:603)
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
                                        // autogroup4wdrDNH (CgPuhFb8bG6EvfE8nh4wDR)
                                        margin: EdgeInsets.fromLTRB(0*fem, 1.85*fem, 27*fem, 0*fem),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              // totaloutputAHX (34:608)
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
                                              // kgtUR (34:607)
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
                                        // vaadinlinebarchart3cD (34:605)
                                        width: 35*fem,
                                        height: 34.85*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vaadin-line-bar-chart-zam.png',
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
                            // autogroup5ya7BiR (CgPuxuohwXkaUGwULz5yA7)
                            width: double.infinity,
                            height: 83*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // totalwaterdayvAD (34:597)
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
                                        // autogroupadefN2D (CgPvCQRDusRAbA5Ku8adEf)
                                        margin: EdgeInsets.fromLTRB(0*fem, 1.85*fem, 5*fem, 0*fem),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              // totalwaterdayunq (34:602)
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
                                              // literfGD (34:601)
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
                                        // vaadinlinebarchartzpH (34:599)
                                        width: 35*fem,
                                        height: 34.85*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vaadin-line-bar-chart-uBP.png',
                                          width: 35*fem,
                                          height: 34.85*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // totaloutputwaterVm3 (34:591)
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
                                        // autogroupwi7hQND (CgPv4VUjxGyKDwGqCSWi7h)
                                        margin: EdgeInsets.fromLTRB(0*fem, 1.85*fem, 22*fem, 0*fem),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              // totaloutputkS5 (34:596)
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
                                              // liter5z9 (34:595)
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
                                        // vaadinlinebarchartEs3 (34:593)
                                        width: 35*fem,
                                        height: 34.85*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vaadin-line-bar-chart-LQy.png',
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}