import 'package:flutter/material.dart';
import 'package:online_course_app/constants.dart';
import 'package:online_course_app/screens/home/components/continue_watching_list.dart';
import 'package:online_course_app/screens/home/components/progress_card.dart';
import 'package:online_course_app/screens/home/components/featured_courses.dart';
import 'package:online_course_app/utils/components/course_details.dart';
import 'package:online_course_app/utils/background.dart';

import '../../model/course.dart';
import 'components/course_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final continueWatching = [
    "https://youtu.be/0F-nudTm5EU",
    "https://youtu.be/0F-nudTm5EU",
    "https://youtu.be/0F-nudTm5EU",
    "https://youtu.be/0F-nudTm5EU",
    "https://youtu.be/0F-nudTm5EU",
  ];

  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff0A0A14),
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            const BgDecor(),
            SafeArea(
              bottom: false,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: FeaturedCourses(
                          leftText: "Courses", rightText: "view all"),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            ...courses.map(
                              (course) => GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    PageRouteBuilder(
                                        pageBuilder: (context, pAnim, sAnim) =>
                                            CourseScreen(
                                              course: course,
                                              tag: "top course",
                                            ),
                                        transitionDuration:
                                            const Duration(milliseconds: 200),
                                        transitionsBuilder:
                                            (context, pAnim, sAnim, child) {
                                          if (pAnim.status ==
                                              AnimationStatus.forward) {
                                            return ScaleTransition(
                                              scale: Tween(begin: 0.5, end: 1.0)
                                                  .animate(CurvedAnimation(
                                                      parent: pAnim,
                                                      curve: Curves
                                                          .fastOutSlowIn)),
                                              child: child,
                                            );
                                          } else {
                                            return FadeTransition(
                                              opacity: pAnim,
                                              child: child,
                                            );
                                          }
                                        }),
                                  );
                                },
                                child: CourseCard(course: course),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                        left: 20,
                      ),
                      child: Text(
                        "Your Progress",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                                color: textColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Row(
                          children: [
                            ...courses.map(
                              (e) => ProgressCard(
                                color: getColor(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, bottom: 10),
                      child: Text(
                        "Continue Watching",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                                color: textColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ...continueWatching
                        .map((lecture) => const ContinueLectures()),
                    const SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
