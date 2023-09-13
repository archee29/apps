import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';

class FeederCard extends StatelessWidget {
  final Map<String, dynamic> userData;
  final Map<String, dynamic>? todayFeederData;

  FeederCard({
    required this.userData,
    required this.todayFeederData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 24, top: 24, right: 24, bottom: 16),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage('assets/images/pattern-1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            userData["job"],
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 4, bottom: 12),
            child: Text(
              userData["user_id"],
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'poppins',
                fontSize: 18,
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            decoration: BoxDecoration(
              color: AppColors.primarySoft,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 6),
                        child: Text(
                          "Morning Feeder",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        (todayFeederData?["masuk"] == null)
                            ? "-"
                            : "${DateFormat.jms().format(DateTime.parse(todayFeederData!["masuk"]["date"]))}",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1.5,
                  height: 24,
                  color: Colors.white,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 6),
                        child: Text(
                          "Afternoon Feeder",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        (todayFeederData?["keluar"] == null)
                            ? "-"
                            : "${DateFormat.jms().format(DateTime.parse(todayFeederData!["keluar"]["date"]))}",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
