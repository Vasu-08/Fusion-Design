import 'package:flutter/material.dart';
import 'bill.dart';
import 'menu.dart';
import 'registration_page.dart';
import 'dashboard_screen1.dart';
import 'dashboard_screen2.dart';
import 'login_page.dart';
import 'module_selection.dart';
import 'place_order.dart';
import 'feedback.dart';
import 'previous_feedback.dart';
import 'order_summary.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const DashboardScreen1();
  }
}

