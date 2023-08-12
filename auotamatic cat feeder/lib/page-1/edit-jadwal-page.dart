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
        // editjadwalpage8QR (30:98)
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
              // autogroupx2bzomT (CgPymidTE2hGNjstgRx2BZ)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 10*fem, 15*fem),
              width: double.infinity,
              height: 28*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // appsnametextKUu (30:219)
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
                    // logoDaH (30:212)
                    width: 41*fem,
                    height: 26*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // iconkucing1NTB (30:213)
                          left: 15*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 26*fem,
                              height: 26*fem,
                              child: Image.asset(
                                'assets/page-1/images/icon-kucing-1-bkD.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // mdicontentsaveplusoutlinefSH (30:354)
                          left: 0*fem,
                          top: 3*fem,
                          child: Align(
                            child: SizedBox(
                              width: 20*fem,
                              height: 20*fem,
                              child: Image.asset(
                                'assets/page-1/images/mdi-content-save-plus-outline-qa9.png',
                                width: 20*fem,
                                height: 20*fem,
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
              // editjadwalpakanw8u (30:150)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 19*fem, 19*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // buttoneditjadwalUPj (30:208)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 217*fem, 8*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // mdicontentsaveplusoutline1Pf (30:356)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                          width: 23*fem,
                          height: 23*fem,
                          child: Image.asset(
                            'assets/page-1/images/mdi-content-save-plus-outline-hrh.png',
                            width: 23*fem,
                            height: 23*fem,
                          ),
                        ),
                        Text(
                          // editjadwal8jB (30:211)
                          'Edit Jadwal',
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
                    // kalenderswf (30:151)
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
                          // keterangantahunbulantanggaljiy (30:205)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(36*fem, 0.61*fem, 43*fem, 0.61*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffd9d9d9),
                          ),
                          child: Align(
                            // monjun12dZT (30:207)
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
                          // autogroupbxvwi57 (CgPzZXeTJR4ihonLRhBXvw)
                          margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 0*fem, 8*fem),
                          width: 220*fem,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // keteranganbulan2Lh (30:199)
                                padding: EdgeInsets.fromLTRB(1.25*fem, 1*fem, 1.25*fem, 1*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // fluentiosarrow24regular8ed (30:202)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 88.5*fem, 1*fem),
                                      width: 5.25*fem,
                                      height: 10.01*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/fluent-ios-arrow-24-regular.png',
                                        width: 5.25*fem,
                                        height: 10.01*fem,
                                      ),
                                    ),
                                    Container(
                                      // june2023SvD (30:204)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 88.5*fem, 0*fem),
                                      child: Text(
                                        'JUNE 2023',
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
                                      // fluentiosarrow24regularXRs (30:200)
                                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                      width: 5.25*fem,
                                      height: 10.01*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/fluent-ios-arrow-24-regular-vZf.png',
                                        width: 5.25*fem,
                                        height: 10.01*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroupnynweWV (CgPzp2EJgG7VweG74NNynw)
                                padding: EdgeInsets.fromLTRB(1*fem, 0*fem, 2*fem, 0*fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // keterangantanggalMvh (30:159)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                      width: double.infinity,
                                      height: 73*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // autogroupaaf9fwP (CgQ1VW6XBmj5BLKkeHAAF9)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28*fem, 0*fem),
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // snWD (30:160)
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
                                                  // Wx1 (30:168)
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
                                                  // TMT (30:183)
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
                                                  // yah (30:184)
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
                                                  // V3F (30:185)
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
                                            // autogroupcn6kEWd (CgQ1oujWuBgwJaEMfXcN6K)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  // ma4h (30:161)
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
                                                  // uMs (30:169)
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
                                                  // tanggalaktifpUq (30:180)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                                  width: 9*fem,
                                                  height: 10*fem,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        // ellipse4wJZ (30:181)
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
                                                        // 1ZK (30:182)
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
                                                  // WW5 (30:191)
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
                                                  // CNu (30:186)
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
                                            // tkfK (30:162)
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
                                            // autogroupxcb9Vcu (CgQ25KTWQ5WE4x7DTBxCb9)
                                            margin: EdgeInsets.fromLTRB(0*fem, 22*fem, 19*fem, 0*fem),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  // CnD (30:170)
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
                                                  // 8vm (30:179)
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
                                                  // pHo (30:192)
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
                                                  // ZWH (30:187)
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
                                            // autogroup8v4tuKF (CgQ2GEJzaC6eo2wTPU8V4T)
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // wrkH (30:163)
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
                                                  // o9j (30:171)
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
                                                  // 8xh (30:178)
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
                                                  // SCh (30:193)
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
                                                  // kjB (30:188)
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
                                            // autogroup566btKb (CgQ3EHXvZ2956t7Xgf566B)
                                            padding: EdgeInsets.fromLTRB(25*fem, 0*fem, 0*fem, 0*fem),
                                            height: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // autogrouptm1yCbB (CgQ2TyURatquTFDxZBtm1y)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // tvn5 (30:164)
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
                                                        // SVX (30:167)
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
                                                  // autogroupcgjrbdK (CgQ2cDjggKkVC7okx4CGjR)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 22*fem, 20*fem, 0*fem),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // whB (30:172)
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
                                                        // S89 (30:177)
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
                                                        // mgD (30:194)
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
                                                        // uXX (30:189)
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
                                                  // autogroupvxmmF5b (CgQ2oDRN8txbWcaposvxMM)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23*fem, 0*fem),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // fmJq (30:165)
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
                                                        // 6ru (30:166)
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
                                                        // qpV (30:173)
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
                                                        // SZP (30:176)
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
                                                        // AEV (30:195)
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
                                                        // V1s (30:190)
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
                                                  // autogrouptdip1F7 (CgQ2zdG21mF7oB62HRTdiP)
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // sw8m (30:198)
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
                                                        // 4z5 (30:197)
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
                                                        // 1eR (30:174)
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
                                                        // uzh (30:175)
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
                                                        // DVb (30:196)
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
                                      // autogroupcgtxaL9 (CgPzf7KVKAHTTU7hH9cGtX)
                                      margin: EdgeInsets.fromLTRB(177*fem, 0*fem, 0*fem, 0*fem),
                                      width: double.infinity,
                                      height: 11*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // cancelbutton7ay (30:156)
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
                                            // okbuttonaUZ (30:153)
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
              // formtambahdata7UV (30:135)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 18*fem, 29*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(10*fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // waktupakandxd (30:149)
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
                    // inputwaktuyFo (30:146)
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
                      '07 : 00',
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
                    // dryfoodx7j (30:145)
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
                    // inputmakananHA1 (30:141)
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
                          // Ybj (30:143)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 266*fem, 0*fem),
                          child: Text(
                            '120',
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
                          // gramHJR (30:144)
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
                    // waterqKw (30:140)
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
                    // inputminumankho (30:136)
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
                          // phf (30:138)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 254*fem, 0*fem),
                          child: Text(
                            '300',
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
                          // mililiterxos (30:139)
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
              // autogroup3xe7Hr9 (CgPyvP3gjkgG5gBph23Xe7)
              margin: EdgeInsets.fromLTRB(17*fem, 0*fem, 18*fem, 226*fem),
              width: double.infinity,
              height: 28*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // cancelbuttonyiy (30:128)
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
                          // eiarrowleftEQ1 (30:131)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.2*fem, 0*fem),
                          width: 13.6*fem,
                          height: 13.6*fem,
                          child: Image.asset(
                            'assets/page-1/images/ei-arrow-left.png',
                            width: 13.6*fem,
                            height: 13.6*fem,
                          ),
                        ),
                        Text(
                          // cancel8VP (30:130)
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
                    // editbuttongWu (30:121)
                    padding: EdgeInsets.fromLTRB(23.5*fem, 6.5*fem, 15*fem, 5.67*fem),
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
                          // mdicontentsaveplusoutlinenZw (30:222)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.67*fem, 0*fem),
                          width: 15.83*fem,
                          height: 15.83*fem,
                          child: Image.asset(
                            'assets/page-1/images/mdi-content-save-plus-outline.png',
                            width: 15.83*fem,
                            height: 15.83*fem,
                          ),
                        ),
                        Container(
                          // editdatau8m (30:123)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.83*fem),
                          child: Text(
                            'Edit Data',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 9*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5*ffem/fem,
                              color: Color(0xffffffff),
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
              // menubuttonq2R (30:99)
              width: 375*fem,
              height: 100*fem,
              child: Image.asset(
                'assets/page-1/images/menu-button-BAH.png',
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