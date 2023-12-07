import 'package:bmi_normal/constants.dart';
import 'package:flutter/material.dart';

class ResultViewBody extends StatelessWidget {
  const ResultViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "BMI results",
            style: TextStyle(fontSize: 18, color: kBlueColor),
          ),
          Text(
            "20",
            style: TextStyle(fontSize: 20, color: kBlueColor),
          ),
          Text(
            "Normal",
            style: TextStyle(fontSize: 24, color: kRedColor),
          ),
        ],
      ),
    );
  }
}
