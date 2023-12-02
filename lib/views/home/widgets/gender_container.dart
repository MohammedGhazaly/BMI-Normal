import 'package:bmi_normal/constants.dart';
import 'package:flutter/material.dart';

class GenderContainer extends StatelessWidget {
  final String gender;
  final bool isSelected;
  final IconData icon;
  const GenderContainer(
      {super.key,
      required this.gender,
      required this.isSelected,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
      height: 200,
      decoration: BoxDecoration(
        color: kBlueColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isSelected ? kRedColor : Colors.transparent,
          width: 3,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            size: 64,
            color: Colors.white,
          ),
          Text(
            gender,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
