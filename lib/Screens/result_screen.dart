
import 'package:bmi_health_calculator/Components/bottom_button.dart';
import 'package:bmi_health_calculator/Components/reusable_card.dart';
import 'package:bmi_health_calculator/constatnts.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  final String bmiResult , resultText , interpretation;


  ResultPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all( 15.0),
                alignment: Alignment.bottomLeft,
                child: Text("Your Result", style: TextStyle(fontSize: 40 , fontWeight: FontWeight.w600 ,),),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: activeCardBgColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(resultText.toUpperCase() , style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal
                  ),),
                  Text(bmiResult , style: TextStyle(
                      fontSize: 110.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),),
          Expanded(child: BottomButton(
            buttonTitle: "RE-CALCULATE",
            onPress: (){
              Navigator.pop(context);
            },
          ))
        ],
      ),
    );
  }
}

