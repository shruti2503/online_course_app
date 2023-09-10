import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:online_course_app/constants.dart';
import 'package:online_course_app/model/course.dart';

class ShopCoursesList extends StatelessWidget {
  const ShopCoursesList({
    Key? key,
    required this.course,
  }) : super(key: key);

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: SizedBox(
        height: 110,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 18, sigmaX: 18),
                child: Container(
                  height: 92,
                  width: MediaQuery.of(context).size.width -
                      (MediaQuery.of(context).size.width * 0.13),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 26,
                bottom: 19,
              ),
              child: Row(
                children: [
                  Hero(
                    tag: "${course.title}shop course",
                    child: Container(
                      height: 115,
                      width: 115,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(course.thmbnail),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(course.title,
                            style: mediumText.copyWith(
                                fontWeight: FontWeight.w500)),
                        Text(
                          course.duration,
                          style: description.copyWith(color: kFontLight),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.deepOrange,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              course.courseRating.toString(),
                              style: smallText.copyWith(
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            /* Positioned(
              bottom: 34,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.width * 0.06,
                width: MediaQuery.of(context).size.width * 0.06,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFEB53A2),
                ),
                child: const Icon(Icons.play_arrow, color: Colors.white),
              ),
            ) */
          ],
        ),
      ),
    );
  }
}
