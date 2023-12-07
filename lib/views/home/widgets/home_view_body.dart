import 'package:bmi_normal/constants.dart';
import 'package:bmi_normal/models/user_model.dart';
import 'package:bmi_normal/views/home/widgets/age_weight_container.dart';
import 'package:bmi_normal/views/home/widgets/custom_slider_widget.dart';
import 'package:bmi_normal/views/home/widgets/gender_container.dart';
import 'package:bmi_normal/views/results/result_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  bool isMale = true;
  double userHeight = 150;
  int age = 20;
  int weight = 60;
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
                  child: InkWell(
                    onTap: () {
                      isMale = true;
                      setState(() {});
                    },
                    child: GenderContainer(
                      isSelected: isMale,
                      gender: "Male",
                      icon: Icons.male_rounded,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      isMale = false;
                      setState(() {});
                    },
                    child: GenderContainer(
                      isSelected: !isMale,
                      gender: "Female",
                      icon: Icons.female_rounded,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            CustomSliderWidget(
              decrementFunction: () {
                if (userHeight == 0) {
                  return;
                }
                userHeight -= 0.1;

                userHeight = double.parse(
                  userHeight.toStringAsFixed(1),
                );
                setState(() {});
              },
              incrementFunction: () {
                if (userHeight == 300) {
                  return;
                }
                userHeight += 0.1;

                userHeight = double.parse(
                  userHeight.toStringAsFixed(1),
                );
                setState(() {});
              },
              height: userHeight,
              onChangedFunction: (height) {
                userHeight = double.parse(
                  height.toStringAsFixed(1),
                );
                setState(() {});
              },
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                    child: AgeWeightContainer(
                  decrementFunction: () {
                    setState(() {});
                    age--;
                  },
                  incrementFunction: () {
                    setState(() {});
                    age++;
                  },
                  text: "Age",
                  value: age,
                )),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: AgeWeightContainer(
                    decrementFunction: () {
                      weight--;
                      setState(() {});
                    },
                    incrementFunction: () {
                      weight++;
                      setState(() {});
                    },
                    text: "Weight",
                    value: weight,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  foregroundColor: Colors.white,
                  backgroundColor: kRedColor,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, ResutlView.routeName,
                      arguments: UserModel(
                          gender: isMale ? "male" : "female",
                          height: userHeight,
                          weight: weight,
                          age: age));
                },
                child: const Text(
                  "Calculate",
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
