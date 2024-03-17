import 'package:bmi_calculator/views/home_sc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(bmi_cal());
}

class bmi_cal extends StatelessWidget {
  const bmi_cal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:home_sc() ,
    );
  }
}

