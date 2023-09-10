import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_course_app/constants.dart';

class SettingBox extends StatelessWidget {
  const SettingBox({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 18, sigmaX: 18),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white.withOpacity(0.10),
            boxShadow: [
              BoxShadow(
                color: shadowColor.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              SvgPicture.asset(
                icon,
                color: Colors.white,
                width: 22,
                height: 22,
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                title,
                style: smallText.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
