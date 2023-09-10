/* import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rive_animation/constants.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return /* Padding(
      padding: const EdgeInsets.only(left: 12, right: 33),
      child: Container(
        height: 60,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: const Color(0xFFF5F5F7),
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            cursorColor: kPrimaryLabelColor,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xFFF5F5F7),
              prefixIcon: SizedBox(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset("assets/icons/search.svg"),
              )),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintText: "Search for courses",
              hintStyle: const TextStyle(
                fontSize: 18,
                color: Color(0xFFA0A5BD),
              ),
            ),
            style: kSearchTextStyle,
            onChanged: (newText) => print(newText),
          ),
        ),
      ),
    ); */
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  /* border: Border.all(
                      color: kSecondaryLabelColor.withOpacity(.3), width: 2) */),
              child: const TextField(
                cursorColor: kSecondaryLabelColor,
                decoration: InputDecoration(
                  /* prefixIcon: SizedBox(
                    child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SvgPicture.asset("assets/icons/search.svg"),
                ),), */
                  fillColor: Color(0xFFF5F5F7),
                  filled: true,
                  contentPadding: EdgeInsets.all(18),
                  border: InputBorder.none,
                  hintText: "Search for courses...",
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Color(0xFFA0A5BD),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 40,
              top: 28,
              child: Container(
                padding: const EdgeInsets.all(8),
                child: SvgPicture.asset(
                  "assets/icons/search.svg",
                  width: 25,
                ),
              ),
            ),
          ],
        );
  }
}
 */

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_course_app/constants.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.white.withOpacity(0.1)),
          color: const Color(0XFF353535),
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20.0),
          child: TextField(
            cursorColor: kGlassyColor,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0XFF353535),
              prefixIcon: SizedBox(
                  child: Padding(
                padding: const EdgeInsets.only(right: 20.0, top: 8, bottom: 8),
                child: SvgPicture.asset("assets/icons/search.svg"),
              )),
              border: InputBorder.none,
              hintText: "Search ...",
              hintStyle: description.copyWith(
                  fontSize: 15, color: kGlassyColor.withOpacity(0.3)),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
            style: description.copyWith(
              fontSize: 18,
            ),
            onChanged: (txt) {
              print(txt);
            },
          ),
        ),
      ),
    );
  }
}
