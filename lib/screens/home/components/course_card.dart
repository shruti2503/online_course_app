import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:online_course_app/constants.dart';
import 'package:online_course_app/model/course.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
    required this.course,
  });

  final Course course;

  @override
  Widget build(BuildContext context) {
    return /* Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      height: 280,
      width: 260,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 6,
              ),
              child: Column(
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12, bottom: 8),
                    child: Text(
                      "Build and animate an iOS app from scratch",
                      style: TextStyle(
                        color: Colors.white38,
                      ),
                    ),
                  ),
                  const Text(
                    "61 SECTIONS - 11 HOURS",
                    style: TextStyle(
                      color: Colors.white38,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Hero(
                        tag:
                            "https://unsplash.com/photos/5EIW3DDX6dw/download?force=true&w=640",
                        child: Container(
                          height: 72,
                          width: 72,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://unsplash.com/photos/5EIW3DDX6dw/download?force=true&w=640"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(36),
                              border:
                                  Border.all(width: 3.0, color: Colors.white)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Teacher",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 16),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "XYZ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  /* Row(
                    children: List.generate(
                      3,
                      (index) => Transform.translate(
                        offset: Offset((-10 * index).toDouble(), 0),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                            "assets/avaters/Avatar ${index + 1}.jpg",
                          ),
                        ),
                      ),
                    ),
                  ), */
                ],
              ),
            ),
          ),
          SvgPicture.asset(iconSrc),
        ],
      ),
    ); */
        Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Stack(
        children: [
          /* Positioned(
                top: 15,
                left: 11,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 39,
                  decoration: BoxDecoration(
                    color: const Color(0xFFAFA8EE),
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: const Text(
                    "Recommended",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ), */
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 16, sigmaX: 16),
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.10),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Hero(
                        tag: "${course.title}top course",
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          child: Image.asset(
                            course.thmbnail,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://unsplash.com/photos/5EIW3DDX6dw/download?force=true&w=640"),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(36),
                                      border: Border.all(
                                          width: 3.0, color: Colors.white)),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  course.author,
                                  style: smallText.copyWith(),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  course.title,
                                  style: mediumText.copyWith(
                                      fontWeight: FontWeight.w500),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  width: 5,
                                  height: 5,
                                  decoration: BoxDecoration(
                                      color: kFontLight,
                                      shape: BoxShape.circle),
                                ),
                                Text('2h 22min',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: kFontLight))
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          /* Positioned(
                bottom: 60,
                right: 20,
                child: ElevatedButton(
                  onPressed: () {},
                  child: null,
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ), */
        ],
      ),
    );
  }
}
