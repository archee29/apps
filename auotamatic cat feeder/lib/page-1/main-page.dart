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
        // mainpageV8u (26:134)
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
              // autogroupebzqMS1 (CgQDkpKxcdgrB522Z1ebZq)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 10*fem, 16*fem),
              width: double.infinity,
              height: 28*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // appsnametextF1b (26:239)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 106*fem, 0*fem),
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
                    // logouM3 (26:235)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vaadinlinebarchartRqB (26:242)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.09*fem, 2*fem, 0*fem),
                          width: 20*fem,
                          height: 19.91*fem,
                          child: Image.asset(
                            'assets/page-1/images/vaadin-line-bar-chart-kLy.png',
                            width: 20*fem,
                            height: 19.91*fem,
                          ),
                        ),
                        Container(
                          // iconkucing1Yeu (26:238)
                          width: 26*fem,
                          height: 26*fem,
                          child: Image.asset(
                            'assets/page-1/images/icon-kucing-1-z2d.png',
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
              // tambahpakanHsP (26:252)
              margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 16*fem, 18*fem),
              padding: EdgeInsets.fromLTRB(10*fem, 15*fem, 7*fem, 20*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0x7fff5cbb)),
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(20*fem),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0*fem, 5*fem),
                    blurRadius: 4*fem,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupekvhX13 (CgQMLgXNDzetXL3WqUeKVh)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 1.78*fem),
                    width: double.infinity,
                    height: 24*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // feederSth (26:246)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 154*fem, 0*fem),
                          child: Text(
                            'Feeder',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5*ffem/fem,
                              color: Color(0xffff39b0),
                            ),
                          ),
                        ),
                        Container(
                          // buttonsettingsydj (26:247)
                          padding: EdgeInsets.fromLTRB(2.27*fem, 2*fem, 0*fem, 2*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // icoutlinesettingssUD (26:249)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.28*fem, 0*fem),
                                width: 19.45*fem,
                                height: 20*fem,
                                child: Image.asset(
                                  'assets/page-1/images/ic-outline-settings-r4y.png',
                                  width: 19.45*fem,
                                  height: 20*fem,
                                ),
                              ),
                              Container(
                                // cekstatusalatPSZ (26:248)
                                margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Cek Status Alat',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w500,
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
                    // line2vBb (26:245)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 7.22*fem),
                    width: 325*fem,
                    height: 1*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff000000),
                    ),
                  ),
                  Container(
                    // autogroupd2f1omB (CgQMVBHDAoQX3STnzyd2f1)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                    width: double.infinity,
                    height: 35*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // tambahpakan82m (26:260)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 46*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(9*fem, 9*fem, 10*fem, 9*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xffff5cbb)),
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
                                // riaddfillD4D (26:263)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1*fem),
                                width: 14*fem,
                                height: 14*fem,
                                child: Image.asset(
                                  'assets/page-1/images/ri-add-fill.png',
                                  width: 14*fem,
                                  height: 14*fem,
                                ),
                              ),
                              Text(
                                // tambahmakananLPj (26:262)
                                'Tambah Makanan',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 11*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff060620),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // tambahairgiV (26:265)
                          padding: EdgeInsets.fromLTRB(9*fem, 9*fem, 10*fem, 9*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xffff5cbb)),
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
                                // riaddfillrWV (26:268)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1*fem),
                                width: 14*fem,
                                height: 14*fem,
                                child: Image.asset(
                                  'assets/page-1/images/ri-add-fill-21P.png',
                                  width: 14*fem,
                                  height: 14*fem,
                                ),
                              ),
                              Text(
                                // tambahminumanahP (26:267)
                                'Tambah Minuman',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 11*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff060620),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupk8t9jKP (CgQMebBCEevf66HAKTk8T9)
                    margin: EdgeInsets.fromLTRB(29*fem, 0*fem, 16*fem, 0*fem),
                    width: double.infinity,
                    height: 30*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // buttonservo3L5 (26:336)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 91*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(0*fem, 5.63*fem, 0*fem, 5.63*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // bitoggleonAfb (26:333)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                                width: 30*fem,
                                height: 18.75*fem,
                                child: Image.asset(
                                  'assets/page-1/images/bi-toggle-on-Rh3.png',
                                  width: 30*fem,
                                  height: 18.75*fem,
                                ),
                              ),
                              Container(
                                // servoonsa1 (26:335)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Servo On',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 11*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff060620),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // buttonminipumpA3K (26:337)
                          padding: EdgeInsets.fromLTRB(0*fem, 5.63*fem, 0*fem, 5.63*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // bitoggleonH7w (26:339)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                                width: 30*fem,
                                height: 18.75*fem,
                                child: Image.asset(
                                  'assets/page-1/images/bi-toggle-on.png',
                                  width: 30*fem,
                                  height: 18.75*fem,
                                ),
                              ),
                              Container(
                                // minipumpoffNv5 (26:338)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Mini Pump Off',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 11*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff060620),
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
            Container(
              // jadwalpakanHXF (26:276)
              margin: EdgeInsets.fromLTRB(17*fem, 0*fem, 18*fem, 13*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupxnxydLD (CgQFRBj3wZVfeji1fYxNXy)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                    width: double.infinity,
                    height: 22*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // jadwalpakanisT (26:272)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 101*fem, 0*fem),
                          child: Text(
                            'Jadwal Pakan',
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
                          // buttontambahjadwal4Ad (26:273)
                          padding: EdgeInsets.fromLTRB(4.38*fem, 1*fem, 0*fem, 0*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // riaddfillmqj (26:270)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.38*fem, 2*fem),
                                width: 12.25*fem,
                                height: 12.25*fem,
                                child: Image.asset(
                                  'assets/page-1/images/ri-add-fill-6p1.png',
                                  width: 12.25*fem,
                                  height: 12.25*fem,
                                ),
                              ),
                              Text(
                                // tambahjadwalgSu (26:258)
                                'Tambah Jadwal',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w600,
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
                    // kalender2mf (26:287)
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
                          // keterangantahunbulantanggaljAH (26:286)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(36*fem, 0.61*fem, 43*fem, 0.61*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffd9d9d9),
                          ),
                          child: Align(
                            // monjun12czm (26:278)
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
                          // autogrouppqwmhmK (CgQFdBP4oe5y6BpzbuPqwM)
                          margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 0*fem, 8*fem),
                          width: 220*fem,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // keteranganbulanRSR (26:284)
                                padding: EdgeInsets.fromLTRB(1.25*fem, 1*fem, 1.25*fem, 1*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // fluentiosarrow24regularkzV (26:281)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                      width: 5.25*fem,
                                      height: 10.01*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/fluent-ios-arrow-24-regular-MoF.png',
                                        width: 5.25*fem,
                                        height: 10.01*fem,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 88.5*fem,
                                    ),
                                    Text(
                                      // june2023s3X (26:283)
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
                                      // fluentiosarrow24regularCbb (26:279)
                                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                      width: 5.25*fem,
                                      height: 10.01*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/fluent-ios-arrow-24-regular-pzd.png',
                                        width: 5.25*fem,
                                        height: 10.01*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroupphytKgD (CgQFt67tbnDAJ62trJPHYT)
                                padding: EdgeInsets.fromLTRB(1*fem, 0*fem, 2*fem, 0*fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // keterangantanggaleCh (26:326)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                      width: double.infinity,
                                      height: 73*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // autogrouppl9mYYy (CgQGTVKuPnuuDe6E3VPL9M)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28*fem, 0*fem),
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // ss5T (26:288)
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
                                                  // Brq (26:298)
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
                                                  // vZX (26:312)
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
                                                  // SGy (26:313)
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
                                                  // aPB (26:320)
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
                                            // autogroupjaeb78D (CgQGiu3ttgjBz1y5q9jAeB)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  // m1zH (26:289)
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
                                                  // Xxd (26:299)
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
                                                  // qyK (26:311)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 5*fem),
                                                  child: Text(
                                                    '12',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 6*ffem,
                                                      fontWeight: FontWeight.w300,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xffff39b0),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // wFf (26:314)
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
                                                  // evm (26:321)
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
                                            // tQuw (26:290)
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
                                            // autogroupk2gpwey (CgQGwor3sp5zx1V9vVK2gP)
                                            margin: EdgeInsets.fromLTRB(0*fem, 22*fem, 19*fem, 0*fem),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  // FvZ (26:301)
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
                                                  // BJR (26:310)
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
                                                  // U2d (26:315)
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
                                                  // pMP (26:322)
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
                                            // autogroupax7mMs7 (CgQH88tB4iNeXChcPxaX7M)
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // wiBs (26:291)
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
                                                  // cY9 (26:302)
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
                                                  // kPT (26:309)
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
                                                  // HeH (26:316)
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
                                                  // Qiu (26:323)
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
                                            // autogroupwphhkXs (CgQHyn88CD3W9G64cFWPhH)
                                            padding: EdgeInsets.fromLTRB(25*fem, 0*fem, 0*fem, 0*fem),
                                            height: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // autogroupzqb96Lq (CgQHKP4SNfRocwKA2QzQB9)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // tzSD (26:292)
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
                                                        // i7K (26:297)
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
                                                  // autogroupukouGPj (CgQHSTgyVfiq42fPVfUKou)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 22*fem, 20*fem, 0*fem),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // z4q (26:303)
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
                                                        // Kcu (26:308)
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
                                                        // Ejs (26:317)
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
                                                        // yhT (26:324)
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
                                                  // autogroupmq1zh7f (CgQHbYGBRgnEj2hT7yMq1Z)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23*fem, 0*fem),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // fS5F (26:293)
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
                                                        // LAd (26:295)
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
                                                        // Ga5 (26:304)
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
                                                        // 1Xf (26:307)
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
                                                        // MLd (26:318)
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
                                                        // 3DT (26:325)
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
                                                  // autogroupdksxyso (CgQHmsJJcb4tJDuubSdKSX)
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // sXuK (26:294)
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
                                                        // EHw (26:296)
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
                                                        // mHs (26:305)
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
                                                        // hxD (26:306)
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
                                                        // FTw (26:319)
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
                                      // autogroupgbkkcJV (CgQFigDuXvh2FSDXXpGBkK)
                                      margin: EdgeInsets.fromLTRB(177*fem, 0*fem, 0*fem, 0*fem),
                                      width: double.infinity,
                                      height: 11*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // cancelbuttonHQd (26:329)
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
                                            // okbuttonZd3 (26:330)
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
              // editjadwaluB7 (26:341)
              margin: EdgeInsets.fromLTRB(17*fem, 0*fem, 18*fem, 17*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // autogroup4n8xcrD (CgQE7JjpRX2n8dZHes4n8X)
                    margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 7*fem),
                    width: double.infinity,
                    height: 21*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // stokpakanmingguanMJ1 (26:401)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 76*fem, 0*fem),
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
                          // buttoneditjadwalt33 (26:397)
                          padding: EdgeInsets.fromLTRB(2.63*fem, 0*fem, 0*fem, 0*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // materialsymbolseditoutlineDr1 (26:402)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.38*fem, 0.22*fem),
                                width: 15.99*fem,
                                height: 15.97*fem,
                                child: Image.asset(
                                  'assets/page-1/images/material-symbols-edit-outline.png',
                                  width: 15.99*fem,
                                  height: 15.97*fem,
                                ),
                              ),
                              Text(
                                // editjadwaljZT (26:400)
                                'Edit Jadwal',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w600,
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
                    // autogroupk7ao57X (CgQEE43aQgs5C58DRwK7Ao)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
                    width: double.infinity,
                    height: 83*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // totalfooddayQvV (26:405)
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
                                // autogroupk9dhRKo (CgQEUsxCvNNaoZPHknk9dH)
                                margin: EdgeInsets.fromLTRB(0*fem, 1.85*fem, 14*fem, 0*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // totalfooddayZgu (26:411)
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
                                      // kgKAH (26:408)
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
                                // vaadinlinebarchartrR7 (26:409)
                                width: 35*fem,
                                height: 34.85*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vaadin-line-bar-chart.png',
                                  width: 35*fem,
                                  height: 34.85*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // totaloutputfoodMcm (26:412)
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
                                // autogroupeeajdaH (CgQELDXyQePb6d5MkCeeAj)
                                margin: EdgeInsets.fromLTRB(0*fem, 1.85*fem, 27*fem, 0*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // totaloutputkeu (26:417)
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
                                      // kghq3 (26:416)
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
                                // vaadinlinebarchart49o (26:414)
                                width: 35*fem,
                                height: 34.85*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vaadin-line-bar-chart-5jo.png',
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
                    // autogroupkhdhPxm (CgQEbNmP4AMq5m7jmEKHDh)
                    width: double.infinity,
                    height: 83*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // totalwaterdayYqf (26:425)
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
                                // autogroupmv1m1DT (CgQErx9m7yQV2xtFPymv1m)
                                margin: EdgeInsets.fromLTRB(0*fem, 1.85*fem, 5*fem, 0*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // totalwaterdayvbK (26:430)
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
                                      // literGv5 (26:429)
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
                                // vaadinlinebarchart2PT (26:427)
                                width: 35*fem,
                                height: 34.85*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vaadin-line-bar-chart-HW1.png',
                                  width: 35*fem,
                                  height: 34.85*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // totaloutputwaterwFX (26:419)
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
                                // autogroupmcwsmVT (CgQEhhvAd37iB8xXvamcWs)
                                margin: EdgeInsets.fromLTRB(0*fem, 1.85*fem, 22*fem, 0*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // totaloutput7ZK (26:424)
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
                                      // literSrV (26:423)
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
                                // vaadinlinebarchartnQZ (26:421)
                                width: 35*fem,
                                height: 34.85*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vaadin-line-bar-chart-8Xb.png',
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
              // lihatjadwalvWm (26:437)
              margin: EdgeInsets.fromLTRB(19*fem, 0*fem, 18*fem, 39*fem),
              width: double.infinity,
              height: 21*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // jadwaltersedia4cy (26:436)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 109*fem, 0*fem),
                    child: Text(
                      'Jadwal Tersedia',
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
                    // buttonlihatjadwalZ3w (26:435)
                    padding: EdgeInsets.fromLTRB(2.06*fem, 0*fem, 0*fem, 0*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // arcticonsnews5HB (26:431)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 4.06*fem, 0*fem),
                          width: 13.88*fem,
                          height: 13.88*fem,
                          child: Image.asset(
                            'assets/page-1/images/arcticons-news-bi9.png',
                            width: 13.88*fem,
                            height: 13.88*fem,
                          ),
                        ),
                        Text(
                          // lihatjadwalaDw (26:434)
                          'Lihat Jadwal',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w600,
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
              // menubuttonj6q (26:135)
              width: 375*fem,
              height: 100*fem,
              child: Image.asset(
                'assets/page-1/images/menu-button-cLR.png',
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