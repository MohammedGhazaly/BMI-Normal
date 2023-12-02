import 'package:bmi_normal/constants.dart';
import 'package:flutter/material.dart';

class CustomSliderWidget extends StatelessWidget {
  final double height;
  final void Function(double)? onChangedFunction;
  final Function()? incrementFunction;
  final Function()? decrementFunction;
  const CustomSliderWidget({
    super.key,
    required this.height,
    this.onChangedFunction,
    required this.incrementFunction,
    required this.decrementFunction,
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
            height.toString(),
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Slider(
            min: 0,
            max: 300,
            value: height,
            activeColor: kRedColor,
            onChanged: onChangedFunction,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: incrementFunction,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: kRedColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 32,
              ),
              InkWell(
                onTap: decrementFunction,
                child: Container(
                  padding: EdgeInsets.only(bottom: 10),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: kRedColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.minimize_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
