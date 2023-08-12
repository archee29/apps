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
        // loadingscreenSmf (19:2)
        padding: EdgeInsets.fromLTRB(78*fem, 380*fem, 78*fem, 404*fem),
        width: double.infinity,
        height: 812*fem,
        decoration: BoxDecoration (
          borderRadius: BorderRadius.circular(30*fem),
          gradient: LinearGradient (
            begin: Alignment(1, -1.083),
            end: Alignment(-0.488, 1),
            colors: <Color>[Color(0xffff41b0), Color(0xffff95d3)],
            stops: <double>[0, 1],
          ),
        ),
        child: Container(
          // group1WmX (21:8)
          width: double.infinity,
          height: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // iconkucing2UCZ (21:7)
                width: 25*fem,
                height: 25*fem,
                child: Image.asset(
                  'assets/page-1/images/icon-kucing-2-83s.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // appsnametextnyw (21:3)
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
            ],
          ),
        ),
      ),
          );
  }
}