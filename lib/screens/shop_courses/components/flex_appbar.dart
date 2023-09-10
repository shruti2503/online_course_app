import 'package:flutter/material.dart';

class MyFlexiableAppBar extends StatelessWidget {
  final String image;
  final String title;

  final double appBarHeight = 66.0;
  const MyFlexiableAppBar({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return SafeArea(
      child: SizedBox(
        height: statusBarHeight + appBarHeight,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Hero(
                          tag: title,
                          child: Image.asset(
                            image,
                            fit: BoxFit.cover,
                          )),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
