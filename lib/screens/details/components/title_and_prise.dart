import 'package:flutter/material.dart';

import '../../../constants.dart';


class TitleAndPrise extends StatelessWidget {
  const TitleAndPrise({
    super.key,
    required this.title,
    required this.country,
    required this.prise,
  });

  final String title, country;
  final int prise;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultpadding),
      child: Row(
        children: <Widget>[
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: "$title\n ",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: kTextColor, fontWeight: FontWeight.bold),
            ),
            TextSpan(
                text: "${country}",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w300))
          ])),
          Spacer(),
          Text(
            "\$$prise",
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: kPrimaryColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
