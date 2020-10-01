import 'package:flutter/material.dart';
import '../constatnts.dart';

class BottomButton extends StatelessWidget {

  final Function onPress;
  final String buttonTitle;
  BottomButton({@required this.onPress, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        //padding: EdgeInsets.only(bottom: 20.0),
        height: bottomContainerHeight,
        width: double.infinity,
        color: bottomContainerColour,
      ),
    );
  }
}
