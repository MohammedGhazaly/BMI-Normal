import 'package:bmi_normal/constants.dart';
import 'package:bmi_normal/views/home/widgets/gender_container.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                    child: GenderContainer(
                  isSelected: true,
                  gender: "Male",
                  icon: Icons.male_rounded,
                )),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: GenderContainer(
                    isSelected: false,
                    gender: "Female",
                    icon: Icons.female_rounded,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            CustomSliderWidget()
          ],
        ),
      ),
    );
  }
}

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
