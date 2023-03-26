import 'package:ferst_ui/constants.dart';
import 'package:ferst_ui/screens/details/components/title_and_prise.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

import 'icons_card.dart';
import 'image_and_icons.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIconCards(size: size),
          TitleAndPrise(
            title: "Angelica",
            country: "Russia",
            prise: 440,
          ),
          SizedBox(
            height: kDefaultpadding,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20))),
                    backgroundColor: kPrimaryColor,
                  ),
                  onPressed: () {},
                  child: Text(
                    "By Now",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                  child: TextButton(
                onPressed: () {},
                child: Text(
                  "Description",
                  style: TextStyle(color: kPrimaryColor, fontSize: 16),
                ),
              ))
            ],
          ),
          SizedBox(height: kDefaultpadding*2,)
        ],
      ),
    );
  }
}
