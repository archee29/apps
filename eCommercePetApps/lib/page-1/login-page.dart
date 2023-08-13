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
        // loginpageFms (1:2)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfffafafa),
          borderRadius: BorderRadius.circular(30*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupga9mxAV (CgQS7stpdA6j7HwKAHga9M)
              padding: EdgeInsets.fromLTRB(10*fem, 57*fem, 7*fem, 32*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // appsnametexte3K (5:22)
                    margin: EdgeInsets.fromLTRB(68*fem, 0*fem, 72*fem, 24*fem),
                    width: double.infinity,
                    height: 28*fem,
                    child: Container(
                      // autogroupmx9uxJu (CgQSUcoGHRHhr6K42mmx9u)
                      width: double.infinity,
                      height: 26*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // iconkucing2gkh (5:4)
                            left: 0*fem,
                            top: 1*fem,
                            child: Align(
                              child: SizedBox(
                                width: 25*fem,
                                height: 25*fem,
                                child: Image.asset(
                                  'assets/page-1/images/icon-kucing-2.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // automaticcatfeeder1HB (2:3)
                            left: 24*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 194*fem,
                                height: 26*fem,
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
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // iconappssqB (7:54)
                    margin: EdgeInsets.fromLTRB(73*fem, 0*fem, 85*fem, 29*fem),
                    width: double.infinity,
                    height: 200*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffff5cbb),
                      borderRadius: BorderRadius.circular(40*fem),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // ellipse3QKK (7:53)
                          left: 35*fem,
                          top: 35*fem,
                          child: Align(
                            child: SizedBox(
                              width: 130*fem,
                              height: 130*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(65*fem),
                                  color: Color(0xffff76c5),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // iconkucing1JQh (2:2)
                          left: 35*fem,
                          top: 35*fem,
                          child: Align(
                            child: SizedBox(
                              width: 130*fem,
                              height: 130*fem,
                              child: Image.asset(
                                'assets/page-1/images/icon-kucing-1-wMB.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // inputusertext1pu (7:51)
                    margin: EdgeInsets.fromLTRB(22*fem, 0*fem, 23*fem, 67*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // usernameZ5j (5:23)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 19*fem),
                          padding: EdgeInsets.fromLTRB(21.67*fem, 7*fem, 163*fem, 7*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(10*fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Opacity(
                                // mdiuseroutlineRdj (5:19)
                                opacity: 0.63,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.67*fem, 1*fem),
                                  width: 14.67*fem,
                                  height: 14.67*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/mdi-user-outline.png',
                                    width: 14.67*fem,
                                    height: 14.67*fem,
                                  ),
                                ),
                              ),
                              Text(
                                // usernameLEu (5:21)
                                'Username',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 18*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5*ffem/fem,
                                  color: Color(0x87000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // passwordqhT (5:24)
                          margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 26*fem),
                          padding: EdgeInsets.fromLTRB(18.67*fem, 5*fem, 172*fem, 9*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(10*fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Opacity(
                                // mdipasswordoutline79B (5:29)
                                opacity: 0.63,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.67*fem, 1.92*fem),
                                  width: 14.67*fem,
                                  height: 19.25*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/mdi-password-outline.png',
                                    width: 14.67*fem,
                                    height: 19.25*fem,
                                  ),
                                ),
                              ),
                              Text(
                                // passwordcrd (5:28)
                                'Password',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 18*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5*ffem/fem,
                                  color: Color(0x87000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // buttonlogin6Wu (7:50)
                          margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 3*fem, 16*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(118*fem, 7*fem, 97.75*fem, 7*fem),
                              width: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xffff76c5),
                                borderRadius: BorderRadius.circular(10*fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(
                                    // masukz6V (7:44)
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14.75*fem, 0*fem),
                                      child: Text(
                                        'Masuk',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Poppins',
                                          fontSize: 18*ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5*ffem/fem,
                                          color: Color(0xb2000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    // feloginsAH (7:46)
                                    opacity: 0.8,
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                      width: 16.5*fem,
                                      height: 16.5*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/fe-login.png',
                                        width: 16.5*fem,
                                        height: 16.5*fem,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // lupakatasandinHF (7:72)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                          width: 130*fem,
                          height: 23*fem,
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xb2000000),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'L',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xb2000000),
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'upa Kata Sandi?',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xb2000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // denganmelanjutkankamumenerimas (7:73)
                    constraints: BoxConstraints (
                      maxWidth: 358*fem,
                    ),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 11*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5*ffem/fem,
                          color: Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'Dengan melanjutkan, kamu menerima ',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                          TextSpan(
                            text: 'Syarat Penggunaan',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5*ffem/fem,
                              color: Color(0xffff39b0),
                            ),
                          ),
                          TextSpan(
                            text: ' dan\n',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                          TextSpan(
                            text: 'Kebijakan Privasi Kami.',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5*ffem/fem,
                              color: Color(0xffff39b0),
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
              // autogroupxt4jFP7 (CgQRzYmhemxetxkbvQXT4j)
              width: 375*fem,
              height: 135*fem,
              child: Image.asset(
                'assets/page-1/images/auto-group-xt4j.png',
                width: 375*fem,
                height: 135*fem,
              ),
            ),
          ],
        ),
      ),
          );
  }
}