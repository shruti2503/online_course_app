/* import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rive_animation/constants.dart';
import 'package:rive_animation/model/course.dart';
import 'package:rive_animation/screens/shop_courses/components/course_list.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({Key? key, required this.course}) : super(key: key);

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          // ignore: prefer_const_constructors
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.07, 0.08, 1],
            colors: [
              Color(0XFF2F2F2E),
              Color(0XFF2F2F2E),
              Color(0XFF050505),
            ],
          ),
        ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(22),
                    bottomRight: Radius.circular(22),
                  ),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(1, 0.0),
                    colors: <Color>[
                      Color(0xFFF4C465),
                      Color(0xFFC63956),
                    ],
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomRight,
                    image: AssetImage(course.thmbnail),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 22,
                  right: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 18,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Color(0xFFF4C465),
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    Text(
                      'Graphic Design Master for Everyone',
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        color: kFont,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 29,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 112.5,
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: Container(
                                      height: 45,
                                      width: 45,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/Backgrounds/img_user1.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 22.5,
                                    child: Container(
                                      height: 45,
                                      width: 45,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/Backgrounds/img_user2.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 45,
                                    child: Container(
                                      height: 45,
                                      width: 45,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/Backgrounds/img_user3.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 67.5,
                                    child: Container(
                                      height: 45,
                                      width: 45,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/Backgrounds/img_user4.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              '+28K Members',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                color: kSecondaryLabelColor,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 47,
                          width: 54,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: kPrimary,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 12,
                            ),
                            child: SvgPicture.asset(
                              'assets/Backgrounds/icon_like.svg',
                              color: const Color(0xFF353567),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 51,
              ),
              ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const MyVerticalDetailList();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 */

import 'package:flutter/material.dart';
import 'package:online_course_app/constants.dart';
import 'package:online_course_app/model/course.dart';
import 'package:online_course_app/screens/shop_courses/components/flex_appbar.dart';
import 'package:online_course_app/utils/components/build_content.dart';
import 'package:online_course_app/utils/components/buy_course_bar.dart';

class CourseScreen extends StatefulWidget {
  final Course course;
  final bool? isPreview;
  final String tag;

  const CourseScreen(
      {super.key,
      this.isPreview = false,
      required this.course,
      required this.tag});

  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen>
    with TickerProviderStateMixin {
  bool show = false;
  bool scrollOrNot = true;

  int _currentIndex = 0;

  void showOrHide() {
    if (_scrollController.position.pixels >= 141) {
      setState(() {
        show = true;
      });
    } else {
      setState(() {
        show = false;
      });
    }

    if ((_scrollController.position.pixels ==
                _scrollController.position.minScrollExtent ||
            _scrollController.position.pixels ==
                _scrollController.position.maxScrollExtent) &&
        widget.isPreview == true) {
      setState(() {
        scrollOrNot = false;
      });
    }
  }

  final _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      print(_scrollController.position.pixels);
      showOrHide();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.07, 0.08, 1],
          colors: [
            Color(0XFF2F2F2E),
            Color(0XFF2F2F2E),
            Color(0XFF050505),
          ],
        ),
      ),
      child: Stack(
        children: [
          CustomScrollView(
            physics: widget.isPreview == true
                ? const NeverScrollableScrollPhysics()
                : null,
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                centerTitle: false,
                backgroundColor: Colors.transparent,
                leading: const Text(''),
                actions: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: Colors.white.withOpacity(0.3)),
                                shape: BoxShape.circle,
                                color: kGlassyColor.withOpacity(0.3)),
                            child: Icon(Icons.close,
                                color: Colors.black.withOpacity(0.3)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                pinned: false,
                expandedHeight: 350.0,
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(50.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '30 videos',
                          style: bigText.copyWith(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.8)),
                        ),
                        Text(
                          '3 sections',
                          style: bigText.copyWith(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.8)),
                        ),
                      ],
                    ),
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: MyFlexiableAppBar(
                    image: widget.course.thmbnail,
                    title: widget.course.title + widget.tag,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: BuildContent(
                    currentIndex: _currentIndex, course: widget.course),
              ),
            ],
          ),
          show == true
              ? Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: BuyCourseBar(
                      color: Colors.white, title: widget.course.title),
                )
              : const Text(''),
        ],
      ),
    );
  }

/*    _buildContent(
    Course course,
  ) {
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
                        course.title,
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
                          _currentIndex = 0;
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
                              width: _currentIndex == 0 ? 80 : 0,
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
                          _currentIndex = 1;
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
                              width: _currentIndex == 1 ? 80 : 0,
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
                if (_currentIndex == 0)
                  ...course.lectures.map((lecture) => const Lectures()).toList()
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
  } */
}
