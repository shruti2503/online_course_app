import 'package:flutter/material.dart';
import 'package:online_course_app/constants.dart';

class FeaturedCourses extends StatelessWidget {
  const FeaturedCourses(
      {Key? key, required this.leftText, required this.rightText})
      : super(key: key);

  final String leftText;
  final String rightText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: textColor, fontWeight: FontWeight.bold),
          ),
          Text(
            rightText,
            style: smallText.copyWith(color: Colors.black, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
