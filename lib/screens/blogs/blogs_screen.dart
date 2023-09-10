/* import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive_animation/constants.dart';
import 'package:rive_animation/model/blog.dart';
import 'package:rive_animation/screens/blogs/components/blog_card.dart';
import 'package:rive_animation/utils/background.dart';

class BlogsScreen extends StatelessWidget {
  const BlogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.07, 0.08, 1],
          colors: [
            Color(0XFF565656),
            Color(0XFF565656),
            Color(0XFF0d0d0d),
            /* Color(0XFF2F2F2E),
            Color(0XFF2F2F2E),
            Color(0XFF050505), */
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Blogs",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: textColor, fontWeight: FontWeight.bold),
                  ),
                ),
                ...blogs.map(
                  (blog) => GestureDetector(
                      child: BlogCard(
                          content: blog.content,
                          fullArticle: blog.fullArticle,
                          image: blog.image,
                          date: blog.publishedDate,
                          title: blog.title)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 */