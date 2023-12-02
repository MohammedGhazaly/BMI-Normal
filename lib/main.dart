import 'package:bmi_normal/constants.dart';
import 'package:bmi_normal/views/home/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BmiApp());
}

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kLightColor,
        useMaterial3: true,
      ),
      initialRoute: HomeView.routeName,
      routes: {
        HomeView.routeName: (context) => const HomeView(),
      },
    );
  }
}
