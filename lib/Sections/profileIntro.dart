import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
    required this.linearGradient,
  }) : super(key: key);

  final Shader linearGradient;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        color: Color(0xff262626),
        padding: EdgeInsets.all(32),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    // color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "I AM NOVEL",
                            style: TextStyle(
                                color: Color.fromARGB(230, 255, 249, 249),
                                fontWeight: FontWeight.w100,
                                letterSpacing: 5,
                                fontSize: 26),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText('Full-Stack web developer,',
                                textStyle: TextStyle(
                                  foreground: Paint()..shader = linearGradient,
                                  // color: Colors.white,
                                  fontSize: 56,
                                  fontWeight: FontWeight.bold,
                                )),
                            TyperAnimatedText('Mobile Apps Developer,',
                                textStyle: TextStyle(
                                  foreground: Paint()..shader = linearGradient,
                                  // color: Colors.white,
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                )),
                            TyperAnimatedText('Web designer,',
                                textStyle: TextStyle(
                                  foreground: Paint()..shader = linearGradient,
                                  // color: Colors.white,
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                ))
                          ],
                          repeatForever: true,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                Color.fromARGB(255, 255, 118, 5),
                                Color(0xffd61a5e),
                              ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  tileMode: TileMode.clamp)),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(16.0),
                                primary: Colors.transparent),
                            child: Text(
                              'Contact Me',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Transform.rotate(
                      angle: pi / 4,
                      child: Container(
                          width: 250,
                          height: 250,
                          // color: Colors.green,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  opacity: 0.6,
                                  image: AssetImage("intro-image.jpg"),
                                  fit: BoxFit.cover))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
