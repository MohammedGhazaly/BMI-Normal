import 'package:bmi_normal/views/home/widgets/gender_container.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
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
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
