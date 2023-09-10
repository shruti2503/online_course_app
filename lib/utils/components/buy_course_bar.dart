import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:online_course_app/constants.dart';

class BuyCourseBar extends StatelessWidget {
  const BuyCourseBar({
    super.key,
    required this.color,
    required this.title,
  });

  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Card(
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        margin: const EdgeInsets.all(0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 16, sigmaX: 16),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.13),
                      blurRadius: 20.0,
                      offset: const Offset(
                        0.0, // horizontal, move right 10
                        -2.0, // vertical, move down 10
                      ),
                    ),
                  ],
                  color: kGlassyColor,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 80,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: kGlassyColor,
                      size: 26,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: bigText.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Course Description',
                          style: description.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                    Container(
                      height: 35,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: kGlassyColor,
                      ),
                      child: Center(
                          child: Text(
                        'Get',
                        style: bigText.copyWith(
                            color: color,
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      )),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
