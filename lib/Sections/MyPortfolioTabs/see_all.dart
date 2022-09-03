import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

const _images = [
  'https://picsum.photos/200/300',
  'https://picsum.photos/200/301',
  'https://picsum.photos/200/302',
  'https://picsum.photos/200/303',
  'https://picsum.photos/200/304',
  'https://picsum.photos/200/305',
];

GridView seeAll() {
  return GridView.count(
    crossAxisCount: 3,
    childAspectRatio: 0.9,
    crossAxisSpacing: 64,
    mainAxisSpacing: 32,
    children: [
      HoverWidget(
        hoverChild: Opacity(
          opacity: 0.1,
          child: Container(
            height: 200,
            decoration: BoxDecoration(
                // color: Colors.red,

                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(_images[0]))),
          ),
        ),
        onHover: (event) {
          print("did");
        },
        child: Container(
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(_images[0]))),
        ),
      ),
      Container(
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(_images[1]))),
      ),
      Container(
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(_images[2]))),
      ),
      Container(
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(_images[3]))),
      ),
      Container(
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(_images[4]))),
      ),
      Container(
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(_images[5]))),
      )
    ],
  );
}
