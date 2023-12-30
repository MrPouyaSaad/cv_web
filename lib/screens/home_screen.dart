// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:cv_web/constant/color.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // final GlobalKey _homeKey = GlobalKey();
  // final GlobalKey _aboutKey = GlobalKey();
  // final GlobalKey _skillsKey = GlobalKey();
  // final GlobalKey _projectsKey = GlobalKey();
  // final GlobalKey _contactKey = GlobalKey();

  final ScrollController _scrollController = ScrollController();

  void scrollToSection(double offset) {
    // final context = key.currentContext;
    // log(_scrollController.offset.toString());
    // if (context != null) {
    //   Scrollable.ensureVisible(
    //     context,
    //     duration: Duration(seconds: 1),
    //     curve: Curves.easeInOut,
    //   );
    // }
    _scrollController.animateTo(
      offset,
      duration: Duration(seconds: 1),
      curve: Curves.easeOut,
    );
  }

// pin App Bar => 955 // floating App bar 955 + 60 (for desktop)
  final double pinAppBar = 68;

  @override
  Widget build(BuildContext context) {
    final double homeIndex = 0.0;
    final double aboutIndex = 955 + pinAppBar;
    final double skillsIndex = 1910 + pinAppBar;
    final double projectsIndex = 2866 + pinAppBar;
    final double contactIndex = 3820 + pinAppBar;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        // appBar: AppBar(
        //   backgroundColor: backgroundColor,
        //   foregroundColor: foregroundColor,
        //   centerTitle: true,
        //   elevation: 0.0,
        //   // floating: true,
        //   // snap: true,
        //   // pinned: false,
        //   leading: Text(
        //     'Hello!',
        //     style: TextStyle(
        //         fontSize: 28,
        //         fontWeight: FontWeight.bold,
        //         color: foregroundColor),
        //   ),
        //   actions: [
        //     TextButton(
        //         onPressed: () {
        //           //log(_scrollController.offset.toString());
        //           scrollToSection(homeIndex, context);
        //           //    scroll(homeIndex);
        //         },
        //         child: Text('Home')),
        //     TextButton(
        //         onPressed: () {
        //           scrollToSection(aboutIndex, context);
        //         },
        //         child: Text('About')),
        //     TextButton(
        //         onPressed: () {
        //           scrollToSection(skillsIndex, context);
        //         },
        //         child: Text('Skills')),
        //     TextButton(
        //         onPressed: () {
        //           scrollToSection(projectsIndex, context);
        //         },
        //         child: Text('Projects')),
        //     TextButton(
        //         onPressed: () {
        //           scrollToSection(contactIndex, context);
        //         },
        //         child: Text('Contact')),
        //   ],
        // ),
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              backgroundColor: backgroundColor,
              foregroundColor: foregroundColor,
              floating: true,
              pinned: false,
              snap: true,
              expandedHeight: 68,
              title: Column(
                children: [
                  SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/saad_logo_dark.png',
                        width: 168,
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: () {
                            scrollToSection(homeIndex);
                            //    scroll(homeIndex);
                          },
                          child: Text('Home')),
                      TextButton(
                          onPressed: () {
                            scrollToSection(aboutIndex);
                          },
                          child: Text('About')),
                      TextButton(
                          onPressed: () {
                            scrollToSection(skillsIndex);
                          },
                          child: Text('Skills')),
                      TextButton(
                          onPressed: () {
                            scrollToSection(projectsIndex);
                          },
                          child: Text('Projects')),
                      TextButton(
                          onPressed: () {
                            scrollToSection(contactIndex);
                          },
                          child: Text('Contact')),
                    ],
                  ).paddingSymmetric(horizontal: 38),
                ],
              ),
            ),
            SliverList.builder(
              // physics: const BouncingScrollPhysics(),
              // padding: const EdgeInsets.all(48),

              itemCount: 5,
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const NameWidget(text: 'Pouya'),
                                    const NameWidget(text: 'Sadeghzadeh'),
                                    const SizedBox(
                                      height: 32,
                                    ),
                                    Text(
                                      'Flutter Developer',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontSize: 72,
                                          color:
                                              secondaryColor.withOpacity(0.6),
                                          fontWeight: FontWeight.w100),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  'assets/images/photo.png',
                                  scale: 0.3,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ).paddingSymmetric(horizontal: 64);
                  case 1:
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'about me',
                            style: TextStyle(
                              color: secondaryColor.withOpacity(0.6),
                              fontSize: 34,
                              backgroundColor: backgroundColor,
                            ),
                          ).paddingSymmetric(vertical: 32),
                          Divider(
                              height: 0, color: foregroundColor, thickness: 4),
                          Container(
                            color: backgroundColor,
                            // child:
                            //     Image.asset('assets/images/saad_logo_dark.png'),
                          ),
                        ],
                      ).paddingSymmetric(horizontal: 64),
                    );
                  case 2:
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'skills',
                            style: TextStyle(
                              color: secondaryColor.withOpacity(0.6),
                              fontSize: 34,
                              backgroundColor: backgroundColor,
                            ),
                          ).paddingSymmetric(vertical: 32),
                          Divider(
                              height: 0, color: foregroundColor, thickness: 4),
                          Container(
                            color: backgroundColor,
                            child: Center(child: Text('skill')),
                          ),
                        ],
                      ).paddingSymmetric(horizontal: 64),
                    );
                  case 3:
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'projects',
                            style: TextStyle(
                              color: secondaryColor.withOpacity(0.6),
                              fontSize: 34,
                              backgroundColor: backgroundColor,
                            ),
                          ).paddingSymmetric(vertical: 32),
                          Divider(
                              height: 0, color: foregroundColor, thickness: 4),
                          Container(
                            color: backgroundColor,
                            child: Center(child: Text('About')),
                          ),
                        ],
                      ).paddingSymmetric(horizontal: 64),
                    );
                  case 4:
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'contact',
                            style: TextStyle(
                              color: secondaryColor.withOpacity(0.6),
                              fontSize: 34,
                              backgroundColor: backgroundColor,
                            ),
                          ).paddingSymmetric(vertical: 32),
                          Divider(
                              height: 0, color: foregroundColor, thickness: 4),
                          Container(
                            color: backgroundColor,
                            child: Center(child: Text('About')),
                          ),
                        ],
                      ).paddingSymmetric(horizontal: 64),
                    );
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NameWidget extends StatelessWidget {
  const NameWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Text(
        text,
        style: const TextStyle(
          height: 0.77,
          fontSize: 128,
          fontFamily: 'PlusJakartaSansExtraBold',
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
    );
  }
}
