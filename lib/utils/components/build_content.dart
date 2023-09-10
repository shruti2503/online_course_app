import 'package:flutter/material.dart';
import 'package:online_course_app/constants.dart';
import 'package:online_course_app/model/course.dart';
import 'package:online_course_app/screens/shop_courses/components/course_list.dart';

class BuildContent extends StatefulWidget {
  BuildContent({Key? key, required this.currentIndex, required this.course})
      : super(key: key);

  Course course;
  int currentIndex;

  @override
  State<BuildContent> createState() => _BuildContentState();
}

class _BuildContentState extends State<BuildContent> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          color: Colors.transparent,
          shadowColor: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.course.title,
                        style: bigText.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: kGlassyColor,
                              borderRadius: BorderRadius.circular(100)),
                          child: const Center(
                              child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Text(
                              "Best Seller",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 12),
                            ),
                          ))),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Course Description',
                    style: bigText.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nunc ut vel dui in aenean. Ornare tellus fringilla malesuada eu auctor. Massadiam libero egestas lectus.',
                  style: description.copyWith(fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nunc ut vel dui in aenean. Ornare tellus fringilla malesuada eu auctor. Massadiam libero egestas lectus.psum dolor sit amet, consectetur adipiscing elit. Sed nunc ut vel dui in aenean. Ornare tellus fringilla malesuada eu auctor. Massadiam libero egestas lectus.psum dolor sit amet, consectetur adipiscing elit. Sed nunc ut vel dui in aenean. Ornare tellus fringilla malesuada eu auctor. Massadiam libero egestas lectus. psum dolor sit amet, consectetur adipiscing elit. Sed nunc ut vel dui in aenean. Ornare tellus fringilla malesuada eu auctor. Massadiam libero egestas lectus.',
                    style: description.copyWith(fontSize: 16),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      child: GestureDetector(
                        onTap: () => setState(() {
                          widget.currentIndex = 0;
                        }),
                        child: Column(
                          children: [
                            Text(
                              "Videos",
                              style:
                                  bigText.copyWith(fontWeight: FontWeight.w500),
                            ),
                            AnimatedContainer(
                              margin: const EdgeInsets.only(bottom: 2),
                              duration: const Duration(milliseconds: 200),
                              height: 4,
                              width: widget.currentIndex == 0 ? 80 : 0,
                              decoration: const BoxDecoration(
                                  color: Color(0xFF81B4FF),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    SizedBox(
                      width: 100,
                      child: GestureDetector(
                        onTap: () => setState(() {
                          widget.currentIndex = 1;
                        }),
                        child: Column(
                          children: [
                            Text(
                              "Notes",
                              style:
                                  bigText.copyWith(fontWeight: FontWeight.w500),
                            ),
                            AnimatedContainer(
                              margin: const EdgeInsets.only(bottom: 2),
                              duration: const Duration(milliseconds: 200),
                              height: 4,
                              width: widget.currentIndex == 1 ? 80 : 0,
                              decoration: const BoxDecoration(
                                  color: Color(0xFF81B4FF),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                if (widget.currentIndex == 0)
                  ...widget.course.lectures
                      .map((lecture) => const Lectures())
                      .toList()
                else
                  Container(),
                Container(
                  height: 120,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
