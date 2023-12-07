import 'package:bmi_normal/constants.dart';
import 'package:flutter/material.dart';

class ResultViewBody extends StatelessWidget {
  final String bmi;
  const ResultViewBody({super.key, required this.bmi});

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
            bmi,
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
