import 'package:flutter/material.dart';
import 'package:flutterresponsivenavigation/Sections/MyPortfolioTabs/portfolioData/portfoliodata.dart';
import 'package:hovering/hovering.dart';

GridView website() {
  return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 400,
        childAspectRatio: 0.9,
        crossAxisSpacing: 64,
        mainAxisSpacing: 32,
      ),
      itemCount: images.length,
      itemBuilder: (BuildContext ctx, index) {
        return HoverWidget(
          hoverChild: Stack(children: [
            Opacity(
              opacity: 0.4,
              child: Container(
                decoration: BoxDecoration(
                    // color: Colors.red,

                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(images[index]))),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    projectTitle[index]["title"]!,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    projectTitle[index]["type"]!,
                    style: TextStyle(color: Colors.white),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.open_in_browser,
                        color: Colors.blue,
                      )),
                  SizedBox(
                    height: 24,
                  )
                ],
              ),
            ),
          ]),
          onHover: (event) {
            print("did");
          },
          child: Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(images[index]))),
          ),
        );
      });
}
