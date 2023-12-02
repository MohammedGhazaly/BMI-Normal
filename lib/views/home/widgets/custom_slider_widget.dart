import 'package:bmi_normal/constants.dart';
import 'package:flutter/material.dart';

class CustomSliderWidget extends StatelessWidget {
  const CustomSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: kBlueColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Height",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            "300",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Slider(
            min: 0,
            max: 300,
            value: 150,
            activeColor: kRedColor,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
