import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:online_course_app/constants.dart';
import 'package:online_course_app/screens/profile/components/custom_image.dart';
import 'package:online_course_app/screens/profile/components/setting_box.dart';
import 'package:online_course_app/screens/profile/components/settings_card.dart';
import 'package:online_course_app/utils/background.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xff0A0A14)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            const BgDecor(),
            SafeArea(
              bottom: false,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 60, bottom: 20, left: 20, right: 20),
                      child: Text(
                        "Profile",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color: textColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(child: _buildBody())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          _buildProfile(),
          const SizedBox(
            height: 20,
          ),
          _buildRecord(),
          const SizedBox(
            height: 20,
          ),
          _buildSection1(),
          const SizedBox(
            height: 20,
          ),
          // _buildSection2(),
          const SizedBox(
            height: 20,
          ),
          _buildSection3(),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Column(
      children: [
        CustomImage(
          "https://unsplash.com/photos/5EIW3DDX6dw/download?force=true&w=640",
          width: 70,
          height: 70,
          radius: 20,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("Vedant Kumar", style: mediumText),
      ],
    );
  }

  Widget _buildRecord() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Expanded(
          child: SettingBox(
            title: "12 courses",
            icon: "assets/icons/work.svg",
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: SettingBox(
            title: "55 hours",
            icon: "assets/icons/time.svg",
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: SettingBox(
            title: "4.8",
            icon: "assets/icons/star.svg",
          ),
        ),
      ],
    );
  }

  Widget _buildSection1() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(36),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 18, sigmaX: 18),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(36),
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
              const SettingItem(
                title: "Setting",
                leadingIcon: "assets/icons/setting.svg",
                bgIconColor: blue,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Divider(
                  height: 0,
                  color: Colors.grey.withOpacity(1),
                ),
              ),
              const SettingItem(
                title: "Payment",
                leadingIcon: "assets/icons/wallet.svg",
                bgIconColor: green,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Divider(
                  height: 0,
                  color: Colors.grey.withOpacity(1),
                ),
              ),
              const SettingItem(
                title: "Bookmark",
                leadingIcon: "assets/icons/bookmark.svg",
                bgIconColor: primary,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /*  Widget _buildSection2() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36),
        color: cardColor,
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
          const SettingItem(
            title: "Notification",
            leadingIcon: "assets/icons/bell.svg",
            bgIconColor: purple,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45),
            child: Divider(
              height: 0,
              color: Colors.grey.withOpacity(0.8),
            ),
          ),
          const SettingItem(
            title: "Privacy",
            leadingIcon: "assets/icons/shield.svg",
            bgIconColor: orange,
          ),
        ],
      ),
    );
  } */

  Widget _buildSection3() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(36),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 18, sigmaX: 18),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(36),
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
          child: const SettingItem(
            title: "Log Out",
            leadingIcon: "assets/icons/logout.svg",
            bgIconColor: Colors.black,
          ),
        ),
      ),
    );
  }
}

/* class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: appBgColor,
          pinned: true,
          snap: true,
          floating: true,
          title: _buildHeader(),
        ),
        SliverToBoxAdapter(child: _buildBody())
      ],
    );
  }

  _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Account",
          style: TextStyle(
            color: textColor,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          _buildProfile(),
          const SizedBox(
            height: 20,
          ),
          _buildRecord(),
          const SizedBox(
            height: 20,
          ),
          _buildSection1(),
          const SizedBox(
            height: 20,
          ),
          _buildSection2(),
          const SizedBox(
            height: 20,
          ),
          _buildSection3(),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Column(
      children: [
        CustomImage(
          profile["image"]!,
          width: 70,
          height: 70,
          radius: 20,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          profile["name"]!,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildRecord() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: SettingBox(
            title: "12 courses",
            icon: "assets/icons/work.svg",
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: SettingBox(
            title: "55 hours",
            icon: "assets/icons/time.svg",
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: SettingBox(
            title: "4.8",
            icon: "assets/icons/star.svg",
          ),
        ),
      ],
    );
  }

  Widget _buildSection1() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: cardColor,
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          SettingItem(
            title: "Setting",
            leadingIcon: "assets/icons/setting.svg",
            bgIconColor: blue,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45),
            child: Divider(
              height: 0,
              color: Colors.grey.withOpacity(0.8),
            ),
          ),
          SettingItem(
            title: "Payment",
            leadingIcon: "assets/icons/wallet.svg",
            bgIconColor: green,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45),
            child: Divider(
              height: 0,
              color: Colors.grey.withOpacity(0.8),
            ),
          ),
          SettingItem(
            title: "Bookmark",
            leadingIcon: "assets/icons/bookmark.svg",
            bgIconColor: primary,
          ),
        ],
      ),
    );
  }

  Widget _buildSection2() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: cardColor,
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          SettingItem(
            title: "Notification",
            leadingIcon: "assets/icons/bell.svg",
            bgIconColor: purple,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45),
            child: Divider(
              height: 0,
              color: Colors.grey.withOpacity(0.8),
            ),
          ),
          SettingItem(
            title: "Privacy",
            leadingIcon: "assets/icons/shield.svg",
            bgIconColor: orange,
          ),
        ],
      ),
    );
  }

  Widget _buildSection3() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: cardColor,
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: SettingItem(
        title: "Log Out",
        leadingIcon: "assets/icons/logout.svg",
        bgIconColor: darker,
      ),
    );
  }
} */