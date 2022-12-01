import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/bmi_ui.dart';
import 'package:flutter_application_1/ui/home_ui.dart';

void main() {
  runApp(Abi());
}

class Abi extends StatelessWidget {
  const Abi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    home: const Homeui());
  }
}
