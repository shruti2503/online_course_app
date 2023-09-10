import 'package:flutter/material.dart';
import 'package:online_course_app/constants.dart';
import 'package:online_course_app/model/course.dart';
import 'package:online_course_app/utils/components/course_details.dart';
import 'package:online_course_app/screens/shop_courses/components/search_widget.dart';
import 'package:online_course_app/screens/shop_courses/components/shop_courses_card.dart';
import 'package:online_course_app/utils/background.dart';

class ShopCoursesScreen extends StatelessWidget {
  const ShopCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Text(
                      "Shop Courses",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                              color: textColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SearchFieldWidget(),
                  /* ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return const ShopCoursesList(
                          courseImage: 'assets/Backgrounds/img_saly24.png',
                          courseTitle: 'Flutter Developer',
                          courseDuration: '8 Hourse',
                          courseRating: 3.0);
                    }) */
                  ...courses
                      .map((course) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                      pageBuilder: (context, pAnim, sAnim) =>
                                          CourseScreen(
                                            tag: "shop course",
                                            course: course,
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
                                                    curve:
                                                        Curves.fastOutSlowIn)),
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
                              child: ShopCoursesList(
                                course: course,
                              ),
                            ),
                          ))
                      .toList(),
                  const Padding(padding: EdgeInsets.only(bottom: 100))
                ],
              ),
            ),
          ),
        ],
      ),
    );
    /* Scaffold(
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 40,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 32, left: 32),
                child: Text(
                  "Shop Courses",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: SearchFieldWidget(),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              sliver: SliverGrid.count(
                mainAxisSpacing: 24,
                crossAxisSpacing: 20,
                childAspectRatio: 0.9,
                crossAxisCount: 2,
                children: shopcourses.map((e) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => DetailsPage(
                                  val: e,
                                ))),
                    child: ShopCourseCard(
                      color: e.color!,
                      teacher: e.teacher,
                      rating: e.rating,
                      title: e.title,
                      image: e.image,
                      uuid: e.uuid,
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),

        /*  Padding(
        padding: EdgeInsets.all(8.0),
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          itemCount: shopcourses.length,
          itemBuilder: (BuildContext context, int index) => ShopCourseCard(
                      color: shopcourses[index].color!,
                      teacher: shopcourses[index].teacher,
                      rating: shopcourses[index].rating,
                      title: shopcourses[index].title,
                      image: shopcourses[index].image,
                    ),
          staggeredTileBuilder: (int index) => StaggeredTile.count(1, 1),
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        ),
      ), */
        /* CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 40,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 32, left: 32),
                child: Text(
                  "Shop Courses",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: SearchFieldWidget(),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              sliver: SliverToBoxAdapter(
                child: MasonryGridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  itemCount: shopcourses.length,
                  itemBuilder: (_, index) {
                    return ShopCourseCard(
                      color: shopcourses[index].color!,
                      teacher: shopcourses[index].teacher,
                      rating: shopcourses[index].rating,
                      title: shopcourses[index].title,
                      image: shopcourses[index].image,
                    );
                  },
                ),
              ),
            )
          ],
        ), */

        /*  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Shop Courses",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: SearchFieldWidget(),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: MasonryGridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  itemCount: shopcourses.length,
                  itemBuilder: (_, index) {
                    return ShopCourseCard(
                      color: shopcourses[index].color!,
                      teacher: shopcourses[index].teacher,
                      rating: shopcourses[index].rating,
                      title: shopcourses[index].title,
                      image: shopcourses[index].image,
                    );
                  },
                ),
              ),
            ),
          ],
        ), */
      ),
    ); */
  }
}
