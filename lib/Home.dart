import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterresponsivenavigation/Sections/aboutMe.dart';
import 'package:flutterresponsivenavigation/Sections/contactMe.dart';
import 'package:flutterresponsivenavigation/Sections/footer.dart';
import 'package:flutterresponsivenavigation/Sections/myPortfolio.dart';
import 'package:flutterresponsivenavigation/Sections/profileIntro.dart';
import 'package:flutterresponsivenavigation/Sections/resume.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _scrollController = ScrollController();
  final ScrollController _pageScrollController = ScrollController();
  final Shader linearGradient = LinearGradient(
          colors: <Color>[Color(0xffd61a5e), Color(0xffff8c05)],
          begin: Alignment.centerRight,
          end: Alignment.bottomLeft)
      .createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 230.0));

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
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF212121),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 112, right: 112, top: 40, bottom: 64),
            child: StickyHeader(
              // overlapHeaders: true,

              header: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xff262626),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                        onPressed: () {
                          print("object");
                        },
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
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MouseRegion(
                          cursor: MouseCursor.defer,
                          onEnter: (event) {
                            print("Cool");
                          },
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.all(16)),
                              onPressed: () {
                                scrollToSection(0);
                              },
                              child: Text(
                                "Home",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.all(16)),
                            onPressed: () {
                              scrollToSection(1);
                            },
                            child: Text(
                              "About",
                              style: TextStyle(color: Colors.white),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.all(16)),
                            onPressed: () {
                              scrollToSection(2);
                            },
                            child: Text(
                              "Resume",
                              style: TextStyle(color: Colors.white),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.all(16)),
                            onPressed: () {
                              scrollToSection(3);
                            },
                            child: Text(
                              "Portfolio",
                              style: TextStyle(color: Colors.white),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.all(16)),
                            onPressed: () {
                              scrollToSection(4);
                            },
                            child: Text(
                              "Contact Me",
                              style: TextStyle(color: Colors.white),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    )
                  ],
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
                    SizedBox(
                      height: 64,
                    ),
                    AboutMe(
                      linearGradient: linearGradient,
                      key: _globalkey[1],
                    ),
                    SizedBox(
                      height: 64,
                    ),
                    MyResume(
                      linearGradient: linearGradient,
                      key: _globalkey[2],
                    ),
                    SizedBox(
                      height: 64,
                    ),
                    MyPortfolio(
                      key: _globalkey[3],
                    ),
                    SizedBox(
                      height: 64,
                    ),
                    ContactMe(
                      key: _globalkey[4],
                    ),
                    SizedBox(
                      height: 64,
                    ),
                    footer()
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
