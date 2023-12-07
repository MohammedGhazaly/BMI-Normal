import 'package:bmi_normal/views/results/widgets/result_view_body.dart';
import 'package:flutter/material.dart';

class ResutlView extends StatelessWidget {
  static String routeName = "resulst-view";
  const ResutlView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Results"),
      ),
      body: ResultViewBody(),
    );
  }
}
