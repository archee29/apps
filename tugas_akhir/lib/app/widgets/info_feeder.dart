import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:tugas_akhir/app/data/data.dart';

class InfoFeeder extends StatelessWidget {
  const InfoFeeder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: info.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 16 / 7, crossAxisCount: 1, mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(info[index].backImage), fit: BoxFit.fill),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        info[index].text,
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text(
                        info[index].lessons,
                        style: const TextStyle(color: Colors.white),
                      ),
                      CircularPercentIndicator(
                        radius: 30,
                        lineWidth: 8,
                        animation: true,
                        animationDuration: 1500,
                        circularStrokeCap: CircularStrokeCap.round,
                        percent: info[index].percent / 100,
                        progressColor: Colors.white,
                        center: Text(
                          "${info[index].percent}%",
                          style: const TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        info[index].imageUrl,
                        height: 110,
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
