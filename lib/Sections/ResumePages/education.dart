import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:timeline_tile/timeline_tile.dart';

Widget educationPage(BuildContext context) {
  return SizedBox(
    height: 380,
    child: ResponsiveRowColumn(
      rowMainAxisAlignment: MainAxisAlignment.end,
      rowCrossAxisAlignment: CrossAxisAlignment.center,
      columnCrossAxisAlignment: CrossAxisAlignment.start,
      columnMainAxisAlignment: MainAxisAlignment.start,
      layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
          ? ResponsiveRowColumnType.COLUMN
          : ResponsiveRowColumnType.ROW,
      children: [
        ResponsiveRowColumnItem(
          child: Expanded(
              child: Container(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Education",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 118, 5),
                        fontWeight: FontWeight.w900,
                        letterSpacing: 5,
                        fontSize: 24)),
                const SizedBox(
                  height: 32,
                ),
                Text("Learning experience in a few ",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      // letterSpacing: 5,
                      color: Colors.white,
                      fontSize: ResponsiveValue(context,
                          defaultValue: 40.0,
                          valueWhen: [
                            const Condition.smallerThan(
                                name: TABLET, value: 28.0)
                          ]).value,
                    )),
                const SizedBox(
                  height: 8,
                ),
                Text("Schools",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      letterSpacing: 5,
                      color: const Color.fromARGB(255, 255, 118, 5),
                      fontSize: ResponsiveValue(context,
                          defaultValue: 40.0,
                          valueWhen: [
                            const Condition.smallerThan(
                                name: TABLET, value: 36.0)
                          ]).value,
                    ))
              ],
            ),
          )),
        ),
        ResponsiveRowColumnItem(
          child: Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  TimelineTile(
                    isFirst: true,
                    indicatorStyle:
                        const IndicatorStyle(color: Color(0xffFF8C05)),
                    afterLineStyle:
                        const LineStyle(color: Colors.white, thickness: 2.2),
                    endChild: SizedBox(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 24.0, top: 28),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Elementary School",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            " Ogoba primary school (2002 - 2010)",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    )),
                  ),
                  TimelineTile(
                    indicatorStyle:
                        const IndicatorStyle(color: Color(0xffFF8C05)),
                    afterLineStyle:
                        const LineStyle(color: Colors.white, thickness: 2.2),
                    beforeLineStyle:
                        const LineStyle(color: Colors.white, thickness: 2.2),
                    endChild: SizedBox(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 24.0, top: 28),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "High School",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Negele Secondary School (2011 - 2013)",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    )),
                  ),
                  TimelineTile(
                    indicatorStyle:
                        const IndicatorStyle(color: Color(0xffFF8C05)),
                    afterLineStyle:
                        const LineStyle(color: Colors.white, thickness: 2.2),
                    beforeLineStyle:
                        const LineStyle(color: Colors.white, thickness: 2.2),
                    endChild: SizedBox(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 24.0, top: 28),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Preparatory school",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Negele Borena secondary and preparatory school (2014 - 2015)",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    )),
                  ),
                  TimelineTile(
                    indicatorStyle:
                        const IndicatorStyle(color: Color(0xffFF8C05)),
                    afterLineStyle:
                        const LineStyle(color: Colors.white, thickness: 2.2),
                    beforeLineStyle:
                        const LineStyle(color: Colors.white, thickness: 2.2),
                    endChild: SizedBox(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 24.0, top: 28),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "College",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Zion college (2015 - 2020)",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
