import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:online_course_app/constants.dart';

class ProgressCard extends StatelessWidget {
  ProgressCard({super.key, required this.color});

  Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: CircularPercentIndicator(
              animateFromLastPercent: true,
              curve: Curves.fastOutSlowIn,
              animationDuration: 1500,
              radius: 60.0,
              lineWidth: 10.0,
              animation: true,
              percent: 0.4,
              center: const Text(
                "40%",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: color /* progressColors[i] */,
              backgroundColor: kBackground,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 16, sigmaX: 16),
                child: Container(
                  width: 200,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: color,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Flutter UI',
                        style: bigText.copyWith(fontSize: 16),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 5),
                        child: Text(
                          '4 of 5 sections completed 8 hours spent so far',
                          style: description.copyWith(fontSize: 12),
                        ),
                      ),
                      Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Container(
                              width: 400,
                              height: 4,
                              color: Color(0XFFB2B2B2),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Container(
                                width: 40, height: 4, color: kBackground),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
