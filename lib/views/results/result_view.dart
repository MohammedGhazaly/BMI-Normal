import 'dart:math';

import 'package:bmi_normal/constants.dart';
import 'package:bmi_normal/models/user_model.dart';
import 'package:bmi_normal/views/results/widgets/result_view_body.dart';
import 'package:flutter/material.dart';

class ResutlView extends StatelessWidget {
  static String routeName = "resulst-view";
  const ResutlView({super.key});

  @override
  Widget build(BuildContext context) {
    final UserModel userModel =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    double bmi = (userModel.weight) / pow(userModel.height / 100, 2);

    return Scaffold(
      backgroundColor: userModel.gender == "male" ? kBlueColor : kRedColor,
      appBar: AppBar(
        title: const Text("Results"),
        foregroundColor: Colors.white,
        backgroundColor: userModel.gender == "male" ? kBlueColor : kRedColor,
      ),
      body: ResultViewBody(bmi: bmi),
    );
  }
}
