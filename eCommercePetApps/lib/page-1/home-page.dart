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
        // homepagex9f (7:74)
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
              // autogroup9kg3FPf (CgQNJpaVVHJzRbAR4D9Kg3)
              margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 10*fem, 13*fem),
              width: double.infinity,
              height: 28*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // appsnametextyaZ (7:110)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 102*fem, 0*fem),
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
                    // logo5Nh (14:6)
                    padding: EdgeInsets.fromLTRB(2.17*fem, 0*fem, 0*fem, 0*fem),
                    height: 27*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // icoutlinehome233 (14:2)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.17*fem, 0.08*fem),
                          width: 21.67*fem,
                          height: 18.42*fem,
                          child: Image.asset(
                            'assets/page-1/images/ic-outline-home.png',
                            width: 21.67*fem,
                            height: 18.42*fem,
                          ),
                        ),
                        Container(
                          // iconkucing18rm (14:4)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                          width: 26*fem,
                          height: 26*fem,
                          child: Image.asset(
                            'assets/page-1/images/icon-kucing-1-YnD.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup61ysJem (CgQNVQ7CXZSgn2DMJK61Ys)
              margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 18*fem, 12*fem),
              width: double.infinity,
              height: 189*fem,
              child: Stack(
                children: [
                  Positioned(
                    // dailyboxq8u (14:32)
                    left: 0*fem,
                    top: 83*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(11*fem, 23*fem, 19*fem, 7*fem),
                      width: 338*fem,
                      height: 106*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0x9bffacdc)),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(5*fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(4*fem, 4*fem),
                            blurRadius: 2*fem,
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupt8tp6Kj (CgQNcK5M5eWM2HfvvUT8tP)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34*fem, 0*fem),
                            width: 254*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // feedboxRso (14:30)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // autogrouphlufyeR (CgQNw8sKDMYd7bJfZShLUf)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // dailyfeedkgvZf (14:16)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 50*fem, 0*fem),
                                              child: Text(
                                                'Daily Feed (Kg)',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 13*ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // totalfeedkgS2D (14:20)
                                              'Total Feed (Kg)',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 13*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // autogroupphkdxWM (CgQNzy6GGTr2Qang2UPhKD)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 68*fem, 0*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // kg6sT (14:17)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 108*fem, 0*fem),
                                              child: Text(
                                                '1,252 Kg',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 11*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xffff5cbb),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // kg1Ud (14:21)
                                              '2,0 Kg',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 11*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xffff5cbb),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // waterbox9Kw (14:31)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                                  width: double.infinity,
                                  height: 37*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // autogroupuubz5zH (CgQNieE8eXGE7fWj5puUBZ)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                                        width: 114*fem,
                                        height: 36*fem,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              // dailywaterml1N9 (14:23)
                                              left: 0*fem,
                                              top: 0*fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 114*fem,
                                                  height: 20*fem,
                                                  child: Text(
                                                    'Daily Water (mL)',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 13*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              // mlKNq (14:24)
                                              left: 0*fem,
                                              top: 19*fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 46*fem,
                                                  height: 17*fem,
                                                  child: RichText(
                                                    text: TextSpan(
                                                      style: SafeGoogleFont (
                                                        'Poppins',
                                                        fontSize: 11*ffem,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1.5*ffem/fem,
                                                        color: Color(0xffff5cbb),
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                          text: '1,252 m',
                                                        ),
                                                        TextSpan(
                                                          text: 'L',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 11*ffem,
                                                            fontWeight: FontWeight.w700,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xffff5cbb),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // autogrouph2ym5eq (CgQNmtdiiRFrFmNx63h2ym)
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              // totalwaterlSVP (14:26)
                                              'Total Water (L)',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 13*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                            Text(
                                              // litera5o (14:27)
                                              '1,252 Liter',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 11*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xffff5cbb),
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
                            // icbaselinearrowcircleright87K (14:28)
                            margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                            width: 20*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'assets/page-1/images/ic-baseline-arrow-circle-right.png',
                              width: 20*fem,
                              height: 20*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // adminhomeqnR (14:33)
                    left: 0*fem,
                    top: 0*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(11*fem, 11*fem, 6*fem, 11*fem),
                      width: 338*fem,
                      height: 100*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xffff5cbb)),
                        color: Color(0xffff5cbb),
                        borderRadius: BorderRadius.circular(20*fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(4*fem, 4*fem),
                            blurRadius: 2*fem,
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupge7y6iM (CgQPQxQHzd2dHV2duBGe7y)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17*fem, 12*fem),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // haloadminqA9 (14:11)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                  child: Text(
                                    'Halo, Admin !',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w800,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Text(
                                  // cekkondisipakanhariiniLsb (14:12)
                                  'Cek Kondisi Pakan Hari ini.',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                                Text(
                                  // pastikanstokpakancukupuntukhar (14:13)
                                  'Pastikan Stok Pakan Cukup, Untuk Hari Ini!',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // iconkucing1BdK (14:9)
                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                            width: 45*fem,
                            height: 45*fem,
                            child: Image.asset(
                              'assets/page-1/images/icon-kucing-1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // onoffinfo7ms (14:47)
              margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 18*fem, 14*fem),
              padding: EdgeInsets.fromLTRB(15*fem, 21*fem, 10*fem, 8*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0x7fff5cbb)),
                color: Color(0x7ffafafa),
                borderRadius: BorderRadius.circular(20*fem),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(4*fem, 4*fem),
                    blurRadius: 2*fem,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // clarityclocklineafT (21:117)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 14*fem),
                    width: 50*fem,
                    height: 50*fem,
                    child: Image.asset(
                      'assets/page-1/images/clarity-clock-line.png',
                      width: 50*fem,
                      height: 50*fem,
                    ),
                  ),
                  Container(
                    // autogroupxqkrH45 (CgQR6aGJaS4gfLu1rsxQKR)
                    margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 28.83*fem, 0*fem),
                    width: 169*fem,
                    height: 62*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // kandang1DTX (16:78)
                          left: 0*fem,
                          top: 41*fem,
                          child: Align(
                            child: SizedBox(
                              width: 81*fem,
                              height: 21*fem,
                              child: Text(
                                'kandang_1',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xffff29a5),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // keteranganjamJzm (16:91)
                          left: 0*fem,
                          top: 0*fem,
                          child: Container(
                            width: 169*fem,
                            height: 45*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  // RZb (16:77)
                                  '00',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 30*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xe2a7a7a7),
                                  ),
                                ),
                                Container(
                                  // hBHs (16:79)
                                  margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 13*fem, 0*fem),
                                  child: Text(
                                    'H',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 13*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xe2a7a7a7),
                                    ),
                                  ),
                                ),
                                Container(
                                  // h1K (16:86)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                  child: Text(
                                    '51',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 30*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xffff39b0),
                                    ),
                                  ),
                                ),
                                Container(
                                  // mP93 (16:87)
                                  margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 16*fem, 0*fem),
                                  child: Text(
                                    'M',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 13*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5*ffem/fem,
                                      color: Color(0x7fff5cbb),
                                    ),
                                  ),
                                ),
                                Text(
                                  // ut5 (16:89)
                                  '03',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 30*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xffff39b0),
                                  ),
                                ),
                                Container(
                                  // sfMT (16:90)
                                  margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                  child: Text(
                                    'S',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 13*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5*ffem/fem,
                                      color: Color(0x7fff5cbb),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // zondiconspauseoutlinek81 (16:72)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.17*fem, 6.34*fem),
                    width: 28*fem,
                    height: 28*fem,
                    child: Image.asset(
                      'assets/page-1/images/zondicons-pause-outline.png',
                      width: 28*fem,
                      height: 28*fem,
                    ),
                  ),
                  Container(
                    // carbonstopoutlinerwj (16:74)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                    width: 28*fem,
                    height: 28*fem,
                    child: Image.asset(
                      'assets/page-1/images/carbon-stop-outline.png',
                      width: 28*fem,
                      height: 28*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // infofeederyFf (14:46)
              margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 18*fem, 13*fem),
              padding: EdgeInsets.fromLTRB(11*fem, 6*fem, 11*fem, 9*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0x7fff5cbb)),
                color: Color(0xfffafafa),
                borderRadius: BorderRadius.circular(20*fem),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(4*fem, 4*fem),
                    blurRadius: 2*fem,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupo4b1cpR (CgQQ2XDNAZj7dmfT6Wo4b1)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 1.78*fem),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // infofeederZUm (14:38)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 96*fem, 0*fem),
                          child: Text(
                            'Info Feeder',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5*ffem/fem,
                              color: Color(0xffff29a5),
                            ),
                          ),
                        ),
                        Container(
                          // buttonsettings5CD (14:45)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 1*fem),
                          padding: EdgeInsets.fromLTRB(2.27*fem, 2*fem, 0*fem, 2*fem),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // icoutlinesettingsCnd (14:40)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.28*fem, 0*fem),
                                width: 19.45*fem,
                                height: 20*fem,
                                child: Image.asset(
                                  'assets/page-1/images/ic-outline-settings.png',
                                  width: 19.45*fem,
                                  height: 20*fem,
                                ),
                              ),
                              Container(
                                // settinggs8RP (14:44)
                                margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Settinggs',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // buttoneditTiZ (14:48)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(3*fem, 2.75*fem, 0*fem, 3*fem),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // materialsymbolseditoutlineaHP (14:52)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.72*fem, 0*fem),
                                width: 18.28*fem,
                                height: 18.25*fem,
                                child: Image.asset(
                                  'assets/page-1/images/material-symbols-edit-outline-njK.png',
                                  width: 18.28*fem,
                                  height: 18.25*fem,
                                ),
                              ),
                              Container(
                                // editSqP (14:49)
                                margin: EdgeInsets.fromLTRB(0*fem, 0.25*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Edit',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
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
                    // line2uiy (14:39)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 2.22*fem),
                    width: 315*fem,
                    height: 1*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff000000),
                    ),
                  ),
                  Container(
                    // informasieRf (16:71)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44*fem, 0*fem),
                    height: 80*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // ketkandangaq7 (16:68)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 27*fem, 0*fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // autogroupv35z7KF (CgQQiatwfHeU2MLt9EV35Z)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                                width: 81*fem,
                                height: 30*fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // namakandangeKB (16:55)
                                      left: 0*fem,
                                      top: 0*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 81*fem,
                                          height: 15*fem,
                                          child: Text(
                                            'Nama Kandang',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 10*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xe57e7e7e),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // kandang1jrR (16:56)
                                      left: 1*fem,
                                      top: 13*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 64*fem,
                                          height: 17*fem,
                                          child: Text(
                                            'kandang_1',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 11*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroupqzwbcQR (CgQQnkSfrEQbgzcCJSQzWb)
                                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                width: 94*fem,
                                height: 30*fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // jenismakanan9v9 (16:57)
                                      left: 0*fem,
                                      top: 0*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 78*fem,
                                          height: 15*fem,
                                          child: Text(
                                            'Jenis Makanan',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 10*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xe57e7e7e),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // makanankeringTR3 (16:58)
                                      left: 1*fem,
                                      top: 13*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 93*fem,
                                          height: 17*fem,
                                          child: Text(
                                            'Makanan Kering',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 11*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff000000),
                                            ),
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
                          // keterangantabungmgd (16:69)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // autogrouphagf6D7 (CgQQWvZhw3WtxZ1Cu4HAGf)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                                width: 74*fem,
                                height: 30*fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // tabungpakanEKK (16:60)
                                      left: 0*fem,
                                      top: 0*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 74*fem,
                                          height: 15*fem,
                                          child: Text(
                                            'Tabung Pakan',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 10*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xe57e7e7e),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // kg6MX (16:61)
                                      left: 1*fem,
                                      top: 13*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 22*fem,
                                          height: 17*fem,
                                          child: Text(
                                            '1 Kg',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 11*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogrouppxd11jP (CgQQZvUi9ZfUKR2x8ePXd1)
                                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                width: 78*fem,
                                height: 30*fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // tabungminum94u (16:62)
                                      left: 0*fem,
                                      top: 0*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 78*fem,
                                          height: 15*fem,
                                          child: Text(
                                            'Tabung Minum',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 10*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xe57e7e7e),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // literTrH (16:63)
                                      left: 1*fem,
                                      top: 13*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 31*fem,
                                          height: 17*fem,
                                          child: Text(
                                            '1 Liter',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 11*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff000000),
                                            ),
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
                          // keteranganwadah9z1 (16:70)
                          width: 53*fem,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // autogroupxvaxtgh (CgQQK6a5dt9xhvmsonxVAX)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                                width: double.infinity,
                                height: 30*fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // outputduB (16:64)
                                      left: 0*fem,
                                      top: 0*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 36*fem,
                                          height: 15*fem,
                                          child: Text(
                                            'Output',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 10*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xe57e7e7e),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // gramMaH (16:66)
                                      left: 1*fem,
                                      top: 13*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 52*fem,
                                          height: 17*fem,
                                          child: Text(
                                            '120 Gram',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 11*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroupk3xjg6m (CgQQNLyfhn9ar2e6p1k3xj)
                                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                width: 40*fem,
                                height: 30*fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // outputyrZ (16:65)
                                      left: 0*fem,
                                      top: 0*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 36*fem,
                                          height: 15*fem,
                                          child: Text(
                                            'Output',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 10*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xe57e7e7e),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // mlrvM (16:67)
                                      left: 1*fem,
                                      top: 13*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 39*fem,
                                          height: 17*fem,
                                          child: Text(
                                            '300 ml',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 11*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff000000),
                                            ),
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // mainmenujjF (16:115)
              margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 22*fem, 26*fem),
              padding: EdgeInsets.fromLTRB(12*fem, 10*fem, 17*fem, 13*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0x66ff5cbb)),
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(20*fem),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(4*fem, 4*fem),
                    blurRadius: 2*fem,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // mainmenupVo (16:111)
                    'Main Menu',
                    style: SafeGoogleFont (
                      'Poppins',
                      fontSize: 14*ffem,
                      fontWeight: FontWeight.w800,
                      height: 1.5*ffem/fem,
                      color: Color(0xff000000),
                    ),
                  ),
                  Container(
                    // line2mvq (24:128)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                    width: 80*fem,
                    height: 2*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffff76c5),
                    ),
                  ),
                  Container(
                    // autogroupg6es7zh (CgQPf2qAxAzzZFnGv8g6Es)
                    margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
                    width: double.infinity,
                    height: 83*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // menukandangEpR (16:116)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 17*fem, 0*fem, 16*fem),
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
                                // feederpooltPB (16:118)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                                constraints: BoxConstraints (
                                  maxWidth: 62*fem,
                                ),
                                child: Text(
                                  'Feeder &\nPool',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                // iconkucing1ArV (16:114)
                                width: 50*fem,
                                height: 50*fem,
                                child: Image.asset(
                                  'assets/page-1/images/icon-kucing-1-d7P.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // menumakanandanminumanKUV (16:119)
                          padding: EdgeInsets.fromLTRB(10.08*fem, 21*fem, 5.62*fem, 20*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xffff39b0)),
                            borderRadius: BorderRadius.circular(15*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3fff5cbb),
                                offset: Offset(0*fem, 5*fem),
                                blurRadius: 10*fem,
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // makananminumanC2V (16:122)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.27*fem, 0*fem),
                                constraints: BoxConstraints (
                                  maxWidth: 80*fem,
                                ),
                                child: Text(
                                  'Makanan &\nMinuman',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xffff39b0),
                                  ),
                                ),
                              ),
                              Container(
                                // mdifoodoutlineuhb (16:123)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                width: 26.03*fem,
                                height: 29.33*fem,
                                child: Image.asset(
                                  'assets/page-1/images/mdi-food-outline.png',
                                  width: 26.03*fem,
                                  height: 29.33*fem,
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
              // menubuttonDCV (16:130)
              width: 375*fem,
              height: 100*fem,
              child: Image.asset(
                'assets/page-1/images/menu-button.png',
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