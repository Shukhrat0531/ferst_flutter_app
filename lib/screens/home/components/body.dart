import 'package:ferst_ui/constants.dart';
import 'package:ferst_ui/screens/home/components/recomended_plants.dart';
import 'package:ferst_ui/screens/home/components/title_with_more.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

import 'future_plants.dart';
import 'header_with_search.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),     
      backgroundColor: kPrimaryColor,
    );

    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderSearchWithBox(
            size: size
            ),
          TitleWithRecomend(
            flatButtonStyle: flatButtonStyle,
            title: "Recommended", press: (){},
            ),
          RecomendedPlants(),
           TitleWithRecomend(
            flatButtonStyle: flatButtonStyle,
            title: "Future Plants", press: (){},
          ),
          FuturedPlants(),
          SizedBox(height: kDefaultpadding,),
        ],
      ),
    );
  }
}
