import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:online_course_app/constants.dart';
import 'package:online_course_app/utils/rive_utils.dart';

import '../../model/menu.dart';
import 'components/btm_nav_item.dart';
import 'components/menu_btn.dart';
import 'components/side_bar.dart';

class EntryPoint extends StatefulWidget {
  const EntryPoint({super.key});

  @override
  State<EntryPoint> createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint>
    with SingleTickerProviderStateMixin {
  bool isSideBarOpen = false;

  Menu selectedBottonNav = bottomNavItems.first;
  Menu selectedSideMenu = sidebarMenus.first;

  late SMIBool isMenuOpenInput;

  void updateSelectedBtmNav(Menu menu) {
    if (selectedBottonNav != menu) {
      setState(() {
        selectedBottonNav = menu;
      });
    }
  }

  late AnimationController _animationController;
  late Animation<double> scalAnimation;
  late Animation<double> animation;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200))
      ..addListener(
        () {
          setState(() {});
        },
      );
    scalAnimation = Tween<double>(begin: 1, end: 0.8).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn));
    animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black12,
      body: Stack(
        children: [
          AnimatedPositioned(
            width: 288,
            height: MediaQuery.of(context).size.height,
            duration: const Duration(milliseconds: 200),
            curve: Curves.fastOutSlowIn,
            left: isSideBarOpen ? 0 : -288,
            top: 0,
            child: const SideBar(),
          ),
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(
                  1 * animation.value - 30 * (animation.value) * pi / 180),
            child: Transform.translate(
              offset: Offset(animation.value * 265, 0),
              child: Transform.scale(
                scale: scalAnimation.value,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(24),
                  ),
                  child: AnimatedContainer(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: isSideBarOpen
                              ? Colors.white
                              : Colors.transparent),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(24),
                      ),
                    ),
                    duration: const Duration(seconds: 1),
                    child: IndexedStack(
                      index: selectedBottonNav.index,
                      children: screens,
                    ),
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            curve: Curves.fastOutSlowIn,
            left: isSideBarOpen ? 220 : 0,
            top: 16,
            child: MenuBtn(
              press: () {
                isMenuOpenInput.value = !isMenuOpenInput.value;

                if (_animationController.value == 0) {
                  _animationController.forward();
                } else {
                  _animationController.reverse();
                }

                setState(
                  () {
                    isSideBarOpen = !isSideBarOpen;
                  },
                );
              },
              riveOnInit: (artboard) {
                final controller = StateMachineController.fromArtboard(
                    artboard, "State Machine");

                artboard.addController(controller!);

                isMenuOpenInput =
                    controller.findInput<bool>("isOpen") as SMIBool;
                isMenuOpenInput.value = true;
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Transform.translate(
              offset: Offset(0, 100 * animation.value),
              child: SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Card(
                    color: Colors.transparent,
                    shadowColor: Colors.transparent,
                    margin: const EdgeInsets.all(0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(24)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaY: 16, sigmaX: 16),
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 12, top: 12, right: 12, bottom: 12),
                          decoration: BoxDecoration(
                            color: kGlassyColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(24)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.13),
                                blurRadius: 20.0,
                                offset: const Offset(
                                  0.0, // horizontal, move right 10
                                  20.0, // vertical, move down 10
                                ),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ...List.generate(
                                bottomNavItems.length,
                                (index) {
                                  Menu navBar = bottomNavItems[index];
                                  return BtmNavItem(
                                    navBar: navBar,
                                    press: () {
                                      RiveUtils.chnageSMIBoolState(
                                          navBar.rive.status!);
                                      updateSelectedBtmNav(navBar);
                                    },
                                    riveOnInit: (artboard) {
                                      navBar.rive.status =
                                          RiveUtils.getRiveInput(artboard,
                                              stateMachineName:
                                                  navBar.rive.stateMachineName);
                                    },
                                    selectedNav: selectedBottonNav,
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      /* bottomNavigationBar: Transform.translate(
        offset: Offset(0, 100 * animation.value),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Card(
              color: Colors.transparent,
              shadowColor: Colors.transparent,
              margin: const EdgeInsets.all(0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(24)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 16, sigmaX: 16),
                  child: Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 12, top: 12, right: 12, bottom: 12),
                      decoration: BoxDecoration(
                        color: kGlassyColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(24)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.13),
                            blurRadius: 20.0,
                            offset: const Offset(
                              0.0, // horizontal, move right 10
                              20.0, // vertical, move down 10
                            ),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ...List.generate(
                            bottomNavItems.length,
                            (index) {
                              Menu navBar = bottomNavItems[index];
                              return BtmNavItem(
                                navBar: navBar,
                                press: () {
                                  RiveUtils.chnageSMIBoolState(
                                      navBar.rive.status!);
                                  updateSelectedBtmNav(navBar);
                                },
                                riveOnInit: (artboard) {
                                  navBar.rive.status = RiveUtils.getRiveInput(
                                      artboard,
                                      stateMachineName:
                                          navBar.rive.stateMachineName);
                                },
                                selectedNav: selectedBottonNav,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ), */
    );
  }
}
