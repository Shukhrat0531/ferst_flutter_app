import 'package:flutter/material.dart';

import '../../../constants.dart';


class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultpadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultpadding / 4),
              height: 1,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
