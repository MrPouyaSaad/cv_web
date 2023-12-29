// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:cv_web/constant/color.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

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

// pin App Bar => 955 // floating App bar 955 + 57 (for desktop)
  final homeIndex = 0.0;
  final aboutIndex = 955.0 + 57;
  final skillsIndex = 1910.0 + 57;
  final projectsIndex = 2866.0 + 57;
  final contactIndex = 3820.0 + 57;

  @override
  Widget build(BuildContext context) {
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
              title: Row(
                children: [
                  Text('Hello!', style: TextStyle(fontSize: 28)),
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
              ).paddingSymmetric(horizontal: 64),
            ),
            SliverList.builder(
              // physics: const BouncingScrollPhysics(),
              // padding: const EdgeInsets.all(48),

              itemCount: 5,
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return SizedBox(
                      key: _homeKey,
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
                    return Container(
                      key: _aboutKey,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.pink,
                      child: Center(child: Text('About')),
                    );
                  case 2:
                    return Container(
                      key: _skillsKey,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.pinkAccent,
                      child: Center(child: Text('Skills')),
                    );
                  case 3:
                    return Container(
                      key: _projectsKey,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.orange,
                      child: Center(child: Text('Project')),
                    );
                  case 4:
                    return Container(
                      key: _contactKey,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.yellow,
                      child: Center(child: Text('Contact')),
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
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
