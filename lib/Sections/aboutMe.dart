import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key? key,
    required this.linearGradient,
  }) : super(key: key);
  final Shader linearGradient;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        color: const Color(0xff262626),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(32.0),
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "About Me",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 118, 5),
                          fontWeight: FontWeight.w900,
                          letterSpacing: 5,
                          fontSize: 25),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text(
                        'I am ',
                        style: TextStyle(
                          fontSize: 32.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      DefaultTextStyle(
                        style: const TextStyle(
                            fontSize: 32.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText('Full-stack web developer,',
                                textStyle: TextStyle(
                                  foreground: Paint()..shader = linearGradient,
                                )),
                            TyperAnimatedText('Mobile Apps Developer,',
                                textStyle: TextStyle(
                                  foreground: Paint()..shader = linearGradient,
                                )),
                            TyperAnimatedText('Web designer.',
                                textStyle: TextStyle(
                                  foreground: Paint()..shader = linearGradient,
                                )),
                          ],
                          repeatForever: true,
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    children: [
                      RichText(
                        text: new TextSpan(
                          children: [
                            new TextSpan(
                              text:
                                  '''I am  a web and mobile app developer from Ethiopia,Negelle Borena and currently living in Addis Abeba.I enjoy building  everything from small business sites to rich interactive web apps.if you are  seeking  a web presence or an employer looking to hire,you can get in touch with me''',
                              style: new TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  letterSpacing: 0.3,
                                  textBaseline: TextBaseline.alphabetic,
                                  height: 1.5),
                            ),
                            new TextSpan(
                              text: ' here',
                              style: new TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.normal,
                                  letterSpacing: 0.3,
                                  textBaseline: TextBaseline.alphabetic,
                                  height: 1.5),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                                  print("object");
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      opacity: 0.6,
                      image: AssetImage("about.jpg"),
                      fit: BoxFit.cover)),
            )),
          ],
        ));
  }
}
