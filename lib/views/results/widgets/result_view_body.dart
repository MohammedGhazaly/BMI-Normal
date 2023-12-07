import 'package:bmi_normal/constants.dart';
import 'package:flutter/material.dart';

class ResultViewBody extends StatelessWidget {
  final double bmi;
  const ResultViewBody({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    String result = "";
    switch (bmi) {
      case < 18:
        result = "Severe Thinness";
        break;
      case > 18.5 && < 25:
        result = "Normal";
        break;
      case > 25 && < 30:
        result = "Overweight";
        break;
      case > 30:
        result = "Dense";
        break;
      default:
        result = "Unknown";
        break;
    }
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "BMI results",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          Text(
            bmi.toStringAsFixed(1),
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            result,
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
