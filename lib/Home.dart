// ignore_for_file: file_names

import 'package:expandable/expandable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterresponsivenavigation/Sections/aboutMe.dart';
import 'package:flutterresponsivenavigation/Sections/contactMe.dart';
import 'package:flutterresponsivenavigation/Sections/footer.dart';
import 'package:flutterresponsivenavigation/Sections/myPortfolio.dart';
import 'package:flutterresponsivenavigation/Sections/profileIntro.dart';
import 'package:flutterresponsivenavigation/Sections/resume.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _pageScrollController = ScrollController();
  final Shader linearGradient = const LinearGradient(
          colors: <Color>[Color(0xffd61a5e), Color(0xffff8c05)],
          begin: Alignment.centerRight,
          end: Alignment.bottomLeft)
      .createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 230.0));

  final List<GlobalKey> _globalkey = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  scrollToSection(int section) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Scrollable.ensureVisible(
        _globalkey[section].currentContext!,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF212121),
        body: ExpandableNotifier(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  left: ResponsiveValue(context,
                      defaultValue: 96.0,
                      valueWhen: [
                        const Condition.smallerThan(name: TABLET, value: 16.0)
                      ]).value!,
                  right: ResponsiveValue(context,
                      defaultValue: 96.0,
                      valueWhen: [
                        const Condition.smallerThan(name: TABLET, value: 16.0)
                      ]).value!,
                  top: 40,
                  bottom: 64),
              child: StickyHeader(
                // overlapHeaders: true,

                header: Visibility(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: Color(0xff262626),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(8)),
                          onPressed: () {},
                          child: Text(
                            "NOVEL",
                            style: TextStyle(
                                foreground: Paint()..shader = linearGradient,
                                fontWeight: FontWeight.w900,
                                // color: Colors.white,
                                letterSpacing: 10,
                                fontSize: 25),
                          ),
                        ),
                        ResponsiveVisibility(
                          replacement: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.menu,
                                color: Colors.white,
                              )),
                          visibleWhen: const [
                            Condition.largerThan(name: TABLET)
                          ],
                          hiddenWhen: const [
                            Condition.smallerThan(name: TABLET)
                          ],
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MouseRegion(
                                cursor: MouseCursor.defer,
                                onEnter: (event) {
                                  if (kDebugMode) {
                                    print("Cool");
                                  }
                                },
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                        padding: const EdgeInsets.all(16)),
                                    onPressed: () {
                                      scrollToSection(0);
                                    },
                                    child: const Text(
                                      "Home",
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                              TextButton(
                                  style: TextButton.styleFrom(
                                      padding: const EdgeInsets.all(16)),
                                  onPressed: () {
                                    scrollToSection(1);
                                  },
                                  child: const Text(
                                    "About",
                                    style: TextStyle(color: Colors.white),
                                  )),
                              TextButton(
                                  style: TextButton.styleFrom(
                                      padding: const EdgeInsets.all(16)),
                                  onPressed: () {
                                    scrollToSection(2);
                                  },
                                  child: const Text(
                                    "Resume",
                                    style: TextStyle(color: Colors.white),
                                  )),
                              TextButton(
                                  style: TextButton.styleFrom(
                                      padding: const EdgeInsets.all(16)),
                                  onPressed: () {
                                    scrollToSection(3);
                                  },
                                  child: const Text(
                                    "Portfolio",
                                    style: TextStyle(color: Colors.white),
                                  )),
                              TextButton(
                                  style: TextButton.styleFrom(
                                      padding: const EdgeInsets.all(16)),
                                  onPressed: () {
                                    scrollToSection(4);
                                  },
                                  child: const Text(
                                    "Contact Me",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                content: SingleChildScrollView(
                  controller: _pageScrollController,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 64,
                      ),
                      Profile(
                        linearGradient: linearGradient,
                        key: _globalkey[0],
                      ),
                      const SizedBox(
                        height: 64,
                      ),
                      AboutMe(
                        linearGradient: linearGradient,
                        key: _globalkey[1],
                      ),
                      const SizedBox(
                        height: 64,
                      ),
                      MyResume(
                        linearGradient: linearGradient,
                        key: _globalkey[2],
                      ),
                      const SizedBox(
                        height: 64,
                      ),
                      MyPortfolio(
                        key: _globalkey[3],
                      ),
                      const SizedBox(
                        height: 64,
                      ),
                      ContactMe(
                        key: _globalkey[4],
                      ),
                      const SizedBox(
                        height: 64,
                      ),
                      const footer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
