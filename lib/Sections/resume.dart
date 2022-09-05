import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterresponsivenavigation/Sections/ResumePages/education.dart';
import 'package:flutterresponsivenavigation/Sections/ResumePages/experiance.dart';
import 'package:flutterresponsivenavigation/Sections/ResumePages/skills.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyResume extends StatelessWidget {
  MyResume({Key? key, required this.linearGradient}) : super(key: key);
  final Shader linearGradient;
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveValue(context,
          defaultValue: 500.0,
          valueWhen: [Condition.smallerThan(name: TABLET, value: 800.0)]).value,
      color: Color(0xff262626),
      // padding: EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            alignment: Alignment.bottomCenter,
            // color: Colors.red,
            child: Text(
              "My Resume",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Color(0xffFF8C05),
                  fontSize: 30),
            ),
          ),
          Expanded(
            child: PageView(
              reverse: false,
              pageSnapping: true,
              controller: controller,
              physics: ClampingScrollPhysics(),
              children: [
                skillsPage(context),
                educationPage(context),
                tools(context, linearGradient: linearGradient),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 60,
            // color: Colors.blue,
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: WormEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  dotColor: Color.fromARGB(148, 255, 138, 5),
                  activeDotColor: Color(0xffFF8C05)),
              onDotClicked: (index) {
                controller.animateToPage(index,
                    duration: Duration(seconds: 1), curve: Curves.ease);
              },
            ),
          ),
        ],
      ),
    );
  }
}
