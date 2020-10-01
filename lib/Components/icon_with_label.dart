import 'package:bmi_health_calculator/constatnts.dart';
import 'package:flutter/material.dart';

class IconWithLabel extends StatelessWidget {

  final IconData iconData;
  final String iconLabel;

  IconWithLabel({this.iconData,this.iconLabel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(iconData,size: 80,),
        Container(
          margin: EdgeInsets.only(top: 20.0),
          child: Text(iconLabel,
            style: kLabelTextStyle,
          ),
        ),
      ],
    );
  }
}