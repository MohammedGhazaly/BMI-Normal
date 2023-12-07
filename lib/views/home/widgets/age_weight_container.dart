import 'package:bmi_normal/constants.dart';
import 'package:flutter/material.dart';

class AgeWeightContainer extends StatelessWidget {
  final String text;
  final int value;
  final Function()? incrementFunction;
  final Function()? decrementFunction;
  const AgeWeightContainer({
    super.key,
    required this.text,
    required this.value,
    required this.incrementFunction,
    required this.decrementFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
      height: 200,
      decoration: BoxDecoration(
        color: kBlueColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          Text(
            value.toString(),
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
