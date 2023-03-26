import 'package:flutter/material.dart';

import '../../../constants.dart';


class FuturedPlants extends StatelessWidget {
  const FuturedPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FuturePlantCard(
            image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          FuturePlantCard(
            image: "assets/images/bottom_img_2.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FuturePlantCard extends StatelessWidget {
  const FuturePlantCard({
    super.key,
    required this.image,
    required this.press,
  });

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultpadding,
          top: kDefaultpadding / 2,
          bottom: kDefaultpadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
      ),
    );
  }
}
