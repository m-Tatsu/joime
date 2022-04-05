import 'package:flutter/material.dart';
import '0_ui/setup/setup.dart';
import '3_res/0_colors/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Joime',
      theme: AppTheme.dark(
      ),
      home: const Setup(),
    );
  }
}