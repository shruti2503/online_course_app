import 'package:flutter/material.dart';
import 'package:online_course_app/constants.dart';

class Lectures extends StatelessWidget {
  const Lectures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Container(
        height: 82,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19), color: kGlassyColor),
        child: Row(
          children: [
            Container(
              height: 82,
              width: 99,
              decoration: BoxDecoration(
                color: const Color(0xFFDB61A1),
                borderRadius: BorderRadius.circular(19),
                image: const DecorationImage(
                  alignment: Alignment.bottomRight,
                  image: AssetImage('assets/Backgrounds/img_saly25.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Introduction Design Graphic for Beginner',
                      overflow: TextOverflow.ellipsis,
                      style: mediumText.copyWith(fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Text(
                          '12 Minutes',
                          overflow: TextOverflow.ellipsis,
                          style:
                              smallText.copyWith(fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 20,
                          decoration: BoxDecoration(
                            color: const Color(0xFFDB61A1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )
                      ],
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
