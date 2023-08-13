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
        // settingspageTQd (26:780)
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
              // autogroupwwwd3n9 (CgPoqWBa5UcjkeRpAFWwwd)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 10*fem, 18*fem),
              width: double.infinity,
              height: 28*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // appsnametextMXw (26:807)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 107*fem, 0*fem),
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
                    // logoMAZ (26:803)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                    padding: EdgeInsets.fromLTRB(2.18*fem, 0*fem, 0*fem, 0*fem),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // icoutlinesettingsTzH (26:810)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.18*fem, 1*fem),
                          width: 18.64*fem,
                          height: 19.17*fem,
                          child: Image.asset(
                            'assets/page-1/images/ic-outline-settings-369.png',
                            width: 18.64*fem,
                            height: 19.17*fem,
                          ),
                        ),
                        Container(
                          // iconkucing1MCV (26:804)
                          width: 26*fem,
                          height: 26*fem,
                          child: Image.asset(
                            'assets/page-1/images/icon-kucing-1-xp1.png',
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
              // settingsformHbw (39:653)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 36*fem, 465*fem),
              padding: EdgeInsets.fromLTRB(3.31*fem, 2.92*fem, 0*fem, 0*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autogroupblcpbcd (CgPpVz5TBUr7sP9YfdbLcP)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 208*fem, 10.92*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // icoutlinesettingsqWy (39:650)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9.32*fem, 0*fem),
                          width: 28.37*fem,
                          height: 29.17*fem,
                          child: Image.asset(
                            'assets/page-1/images/ic-outline-settings-Pa1.png',
                            width: 28.37*fem,
                            height: 29.17*fem,
                          ),
                        ),
                        Container(
                          // settings9nZ (39:652)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                          child: Text(
                            'Settings',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 17*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*ffem/fem,
                              color: Color(0xffff39b0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // buttonprofil3sw (39:659)
                    margin: EdgeInsets.fromLTRB(12.69*fem, 0*fem, 0*fem, 12*fem),
                    padding: EdgeInsets.fromLTRB(6*fem, 4*fem, 9*fem, 4*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0x4cff39b0)),
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(1*fem, 3*fem),
                          blurRadius: 4*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // profilsayaJJ5 (39:655)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 227*fem, 0*fem),
                          child: Text(
                            'Profil Saya',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // iconamoonarrowright2pnD (39:656)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                          width: 5*fem,
                          height: 10*fem,
                          child: Image.asset(
                            'assets/page-1/images/iconamoon-arrow-right-2.png',
                            width: 5*fem,
                            height: 10*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // buttonhistory3Q5 (39:660)
                    margin: EdgeInsets.fromLTRB(12.69*fem, 0*fem, 0*fem, 12*fem),
                    padding: EdgeInsets.fromLTRB(6*fem, 4*fem, 9*fem, 4*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0x4cff39b0)),
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(1*fem, 3*fem),
                          blurRadius: 4*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // historyXa9 (39:664)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 246*fem, 0*fem),
                          child: Text(
                            'History',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // iconamoonarrowright2rsK (39:662)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                          width: 5*fem,
                          height: 10*fem,
                          child: Image.asset(
                            'assets/page-1/images/iconamoon-arrow-right-2-Nmo.png',
                            width: 5*fem,
                            height: 10*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // buttonkeluarYEM (39:665)
                    margin: EdgeInsets.fromLTRB(12.69*fem, 0*fem, 0*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(6*fem, 4*fem, 9*fem, 4*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0x4cff39b0)),
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(1*fem, 3*fem),
                          blurRadius: 4*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // keluarbCd (39:669)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 249*fem, 0*fem),
                          child: Text(
                            'Keluar',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // iconamoonarrowright2io3 (39:667)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                          width: 5*fem,
                          height: 10*fem,
                          child: Image.asset(
                            'assets/page-1/images/iconamoon-arrow-right-2-sRs.png',
                            width: 5*fem,
                            height: 10*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // menubuttonFHB (26:781)
              width: 375*fem,
              height: 100*fem,
              child: Image.asset(
                'assets/page-1/images/menu-button-rPK.png',
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