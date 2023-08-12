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
        // tambahjadwalpagewGu (26:626)
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
              // autogroupcmwpBh3 (CgQ6zWbe3J1bcYkLQEcmWP)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 10*fem, 15*fem),
              width: double.infinity,
              height: 28*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // appsnametextiBB (26:777)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 113*fem, 0*fem),
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
                    // logooCd (26:773)
                    width: 41*fem,
                    height: 26*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // iconkucing11pV (26:774)
                          left: 15*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 26*fem,
                              height: 26*fem,
                              child: Image.asset(
                                'assets/page-1/images/icon-kucing-1-kFs.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // formkitaddiU1 (30:350)
                          left: 1.1875*fem,
                          top: 4.1875*fem,
                          child: Align(
                            child: SizedBox(
                              width: 16.63*fem,
                              height: 16.63*fem,
                              child: Image.asset(
                                'assets/page-1/images/formkit-add-tnD.png',
                                width: 16.63*fem,
                                height: 16.63*fem,
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
              // tambahjadwalpakannCy (30:2)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 19*fem, 19*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // buttontambahjadwalicR (30:58)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 181*fem, 8*fem),
                    padding: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 0*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // riaddfillSYR (30:59)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                          width: 14*fem,
                          height: 14*fem,
                          child: Image.asset(
                            'assets/page-1/images/ri-add-fill-xKj.png',
                            width: 14*fem,
                            height: 14*fem,
                          ),
                        ),
                        Text(
                          // tambahjadwalxFs (30:61)
                          'Tambah Jadwal',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5*ffem/fem,
                            color: Color(0xffff39b0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // kalenderW2V (30:3)
                    padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                    width: double.infinity,
                    height: 118*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0x7fff5cbb)),
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 5*fem),
                          blurRadius: 4*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // keterangantahunbulantanggalygm (30:55)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(36*fem, 0.61*fem, 43*fem, 0.61*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffd9d9d9),
                          ),
                          child: Align(
                            // monjun12qU5 (30:57)
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              child: Container(
                                constraints: BoxConstraints (
                                  maxWidth: 30*fem,
                                ),
                                child: Text(
                                  '2023\nMon\nJun 12',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 10*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupegv5V2q (CgQ7oa5ZNZcHqoqAzfEGV5)
                          margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 0*fem, 8*fem),
                          width: 220*fem,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // keteranganbulanct9 (30:49)
                                padding: EdgeInsets.fromLTRB(1.25*fem, 1*fem, 1.25*fem, 1*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // fluentiosarrow24regularZHb (30:52)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                      width: 5.25*fem,
                                      height: 10.01*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/fluent-ios-arrow-24-regular-rr5.png',
                                        width: 5.25*fem,
                                        height: 10.01*fem,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 88.5*fem,
                                    ),
                                    Text(
                                      // june2023GC1 (30:54)
                                      'JUNE 2023',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 6*ffem,
                                        fontWeight: FontWeight.w300,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 88.5*fem,
                                    ),
                                    Container(
                                      // fluentiosarrow24regularPnR (30:50)
                                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                      width: 5.25*fem,
                                      height: 10.01*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/fluent-ios-arrow-24-regular-WbB.png',
                                        width: 5.25*fem,
                                        height: 10.01*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroupivcj47s (CgQ85twgzWC68j77wJiVcj)
                                padding: EdgeInsets.fromLTRB(1*fem, 0*fem, 2*fem, 0*fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // keterangantanggalnJm (30:11)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                      width: double.infinity,
                                      height: 73*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // autogrouppuzyWkZ (CgQ8iJ4i133QR9CCN5puZy)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28*fem, 0*fem),
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // sqH3 (30:12)
                                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 13*fem),
                                                  child: Text(
                                                    'S',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 6*ffem,
                                                      fontWeight: FontWeight.w300,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // kuo (30:20)
                                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 5*fem),
                                                  child: Text(
                                                    '4',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 6*ffem,
                                                      fontWeight: FontWeight.w300,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // tm7 (30:33)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                                  child: Text(
                                                    '11',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 6*ffem,
                                                      fontWeight: FontWeight.w300,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // C17 (30:34)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                                  child: Text(
                                                    '18',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 6*ffem,
                                                      fontWeight: FontWeight.w300,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // 8fT (30:35)
                                                  '25',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 6*ffem,
                                                    fontWeight: FontWeight.w300,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // autogroupnkkhs7F (CgQ8yHdj5dnHDTLvY2NkKh)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  // mB7w (30:13)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 13*fem),
                                                  child: Text(
                                                    'M',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 6*ffem,
                                                      fontWeight: FontWeight.w300,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // 7XP (30:21)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 5*fem),
                                                  child: Text(
                                                    '5',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 6*ffem,
                                                      fontWeight: FontWeight.w300,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // tanggalaktifenD (30:97)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                                  width: 9*fem,
                                                  height: 10*fem,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        // ellipse4yJh (30:96)
                                                        left: 0*fem,
                                                        top: 1*fem,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 9*fem,
                                                            height: 9*fem,
                                                            child: Container(
                                                              decoration: BoxDecoration (
                                                                borderRadius: BorderRadius.circular(4.5*fem),
                                                                color: Color(0xffff76c5),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        // Gob (30:32)
                                                        left: 2*fem,
                                                        top: 0*fem,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 6*fem,
                                                            height: 9*fem,
                                                            child: Text(
                                                              '12',
                                                              style: SafeGoogleFont (
                                                                'Poppins',
                                                                fontSize: 6*ffem,
                                                                fontWeight: FontWeight.w300,
                                                                height: 1.5*ffem/fem,
                                                                color: Color(0xdd262525),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // Ym7 (30:41)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 5*fem),
                                                  child: Text(
                                                    '19',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 6*ffem,
                                                      fontWeight: FontWeight.w300,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // faq (30:36)
                                                  '26',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 6*ffem,
                                                    fontWeight: FontWeight.w300,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // t2RP (30:14)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                                            child: Text(
                                              'T',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 6*ffem,
                                                fontWeight: FontWeight.w300,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // autogrouproysxpq (CgQ9Cs5SLS4YvkRc1iRoYs)
                                            margin: EdgeInsets.fromLTRB(0*fem, 22*fem, 19*fem, 0*fem),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  // V45 (30:22)
                                                  '6',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 6*ffem,
                                                    fontWeight: FontWeight.w300,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5*fem,
                                                ),
                                                Container(
                                                  // 2Zo (30:31)
                                                  margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
                                                  child: Text(
                                                    '13',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 6*ffem,
                                                      fontWeight: FontWeight.w300,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5*fem,
                                                ),
                                                Text(
                                                  // KJ1 (30:42)
                                                  '20',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 6*ffem,
                                                    fontWeight: FontWeight.w300,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5*fem,
                                                ),
                                                Container(
                                                  // f6y (30:37)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                                  child: Text(
                                                    '27',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 6*ffem,
                                                      fontWeight: FontWeight.w300,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // autogroupvtakCMo (CgQ9PXSLfAovsbRNBMvtaK)
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // w8WM (30:15)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 13*fem),
                                                  child: Text(
                                                    'W',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 6*ffem,
                                                      fontWeight: FontWeight.w300,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // 4uo (30:23)
                                                  margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 5*fem),
                                                  child: Text(
                                                    '7',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 6*ffem,
                                                      fontWeight: FontWeight.w300,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // PhB (30:30)
                                                  margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 5*fem),
                                                  child: Text(
                                                    '14',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 6*ffem,
                                                      fontWeight: FontWeight.w300,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // L6d (30:43)
                                                  margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 5*fem),
                                                  child: Text(
                                                    '21',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 6*ffem,
                                                      fontWeight: FontWeight.w300,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // TBF (30:38)
                                                  margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 0*fem),
                                                  child: Text(
                                                    '28',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 6*ffem,
                                                      fontWeight: FontWeight.w300,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // autogroupbzipPqb (CgQAEvBhwHdjiQyLd2BZiP)
                                            padding: EdgeInsets.fromLTRB(25*fem, 0*fem, 0*fem, 0*fem),
                                            height: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // autogrouprybmXwo (CgQ9aBoEyuZJpSR8M1Rybm)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // tdzq (30:16)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                                        child: Text(
                                                          'T',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w300,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        // wVj (30:19)
                                                        '1',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 6*ffem,
                                                          fontWeight: FontWeight.w300,
                                                          height: 1.5*ffem/fem,
                                                          color: Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // autogroup2hxmhUu (CgQ9hS6Afq5hSMf1fM2hXm)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 22*fem, 20*fem, 0*fem),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // 32y (30:24)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 5*fem),
                                                        child: Text(
                                                          '8',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w300,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // jwP (30:29)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 3*fem),
                                                        child: Text(
                                                          '15',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w300,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // rWD (30:44)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 6*fem),
                                                        child: Text(
                                                          '22',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w300,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // C4H (30:39)
                                                        margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                        child: Text(
                                                          '29',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w300,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // autogroup312fvky (CgQ9rgKmAmNUJBaj8k312f)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23*fem, 0*fem),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // f4cH (30:17)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 1*fem),
                                                        child: Text(
                                                          'F',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w300,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // 9Nq (30:18)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 3*fem),
                                                        child: Text(
                                                          '2',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w300,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // VBo (30:25)
                                                        margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 5*fem),
                                                        child: Text(
                                                          '9',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w300,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // oiH (30:28)
                                                        margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 3*fem),
                                                        child: Text(
                                                          '16',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w300,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // j69 (30:45)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                                        child: Text(
                                                          '23',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w300,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // fkV (30:40)
                                                        margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                        child: Text(
                                                          '30',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w300,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // autogroupl5odQTB (CgQA3kqduoCGD6Jcv7L5oD)
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // sxjb (30:48)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                                        child: Text(
                                                          'S',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w300,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // HWy (30:47)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                                        child: Text(
                                                          '3',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w300,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // 1hs (30:26)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                                        child: Text(
                                                          '10',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w300,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // wLd (30:27)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 3*fem),
                                                        child: Text(
                                                          '17',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w300,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        // Qk1 (30:46)
                                                        '24',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 6*ffem,
                                                          fontWeight: FontWeight.w300,
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
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // autogroupt1bmLtZ (CgQ7uZuZobuSZXtfTqT1Bm)
                                      margin: EdgeInsets.fromLTRB(177*fem, 0*fem, 0*fem, 0*fem),
                                      width: double.infinity,
                                      height: 11*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // cancelbutton4Jm (30:8)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                                            width: 23*fem,
                                            height: double.infinity,
                                            child: Text(
                                              'CANCEL',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 6*ffem,
                                                fontWeight: FontWeight.w300,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff0075ff),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // okbuttona2D (30:5)
                                            height: double.infinity,
                                            child: Text(
                                              'OK',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 6*ffem,
                                                fontWeight: FontWeight.w300,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff0075ff),
                                              ),
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // formtambahdata7H3 (30:66)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 18*fem, 29*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(10*fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // waktupakanzLq (30:63)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                    child: Text(
                      'Waktu Pakan',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 9*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5*ffem/fem,
                        color: Color(0xff929292),
                      ),
                    ),
                  ),
                  Container(
                    // inputwaktuj3X (30:67)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                    padding: EdgeInsets.fromLTRB(9*fem, 4*fem, 9*fem, 5*fem),
                    width: 339*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0x33ff39b0)),
                      color: Color(0xfff4f4f4),
                      borderRadius: BorderRadius.circular(10*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(1*fem, 5*fem),
                          blurRadius: 4*fem,
                        ),
                      ],
                    ),
                    child: Text(
                      'Jam : Menit',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 11*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5*ffem/fem,
                        color: Color(0xffff39b0),
                      ),
                    ),
                  ),
                  Container(
                    // dryfoodkzD (30:71)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 2*fem),
                    child: Text(
                      'Dry Food',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 9*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5*ffem/fem,
                        color: Color(0xff929292),
                      ),
                    ),
                  ),
                  Container(
                    // inputmakanans3F (30:68)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 21*fem),
                    padding: EdgeInsets.fromLTRB(9*fem, 4*fem, 14*fem, 5*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0x33ff39b0)),
                      color: Color(0xfff4f4f4),
                      borderRadius: BorderRadius.circular(10*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(1*fem, 5*fem),
                          blurRadius: 4*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vGR (30:70)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 269*fem, 0*fem),
                          child: Text(
                            '00',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5*ffem/fem,
                              color: Color(0xffff39b0),
                            ),
                          ),
                        ),
                        Text(
                          // gram47j (30:72)
                          'Gram',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 11*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5*ffem/fem,
                            color: Color(0xffff39b0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // waterQhP (30:77)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 2*fem),
                    child: Text(
                      'Water',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 9*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5*ffem/fem,
                        color: Color(0xff929292),
                      ),
                    ),
                  ),
                  Container(
                    // inputminumanvfj (30:73)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(9*fem, 4*fem, 13*fem, 5*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0x33ff39b0)),
                      color: Color(0xfff4f4f4),
                      borderRadius: BorderRadius.circular(10*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(1*fem, 5*fem),
                          blurRadius: 4*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // nhw (30:75)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 260*fem, 0*fem),
                          child: Text(
                            '00',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5*ffem/fem,
                              color: Color(0xffff39b0),
                            ),
                          ),
                        ),
                        Text(
                          // mililitervp9 (30:76)
                          'MiliLiter',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 11*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5*ffem/fem,
                            color: Color(0xffff39b0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupeeq5f13 (CgQ7BLcvvwzLkDdkQyEeq5)
              margin: EdgeInsets.fromLTRB(17*fem, 0*fem, 18*fem, 226*fem),
              width: double.infinity,
              height: 28*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // cancelbuttonyGd (30:84)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 139*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(26.2*fem, 7*fem, 24*fem, 7*fem),
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffff39b0)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 4*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // eiarrowleftqZj (30:80)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.2*fem, 0*fem),
                          width: 13.6*fem,
                          height: 13.6*fem,
                          child: Image.asset(
                            'assets/page-1/images/ei-arrow-left-kh7.png',
                            width: 13.6*fem,
                            height: 13.6*fem,
                          ),
                        ),
                        Text(
                          // cancelwcm (30:79)
                          'Cancel',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 9*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // tambahbuttonu3o (30:85)
                    padding: EdgeInsets.fromLTRB(24*fem, 7*fem, 19*fem, 7*fem),
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffffffff)),
                      color: Color(0xffff39b0),
                      borderRadius: BorderRadius.circular(10*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 4*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // formkitaddyZT (30:92)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                          width: 14*fem,
                          height: 14*fem,
                          child: Image.asset(
                            'assets/page-1/images/formkit-add.png',
                            width: 14*fem,
                            height: 14*fem,
                          ),
                        ),
                        Text(
                          // tambahH4M (30:87)
                          'Tambah',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 9*ffem,
                            fontWeight: FontWeight.w600,
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
              // menubutton2nd (26:627)
              width: 375*fem,
              height: 100*fem,
              child: Image.asset(
                'assets/page-1/images/menu-button-7x5.png',
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