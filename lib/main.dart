import 'package:flutter/material.dart';
import 'package:fastlocation/src/modules/initial/page/initial_page.dart';
import 'package:fastlocation/src/modules/home/page/home_page.dart';
import 'package:fastlocation/src/modules/history/page/history_page.dart';
import 'package:fastlocation/src/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FastLocation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.initial,
      routes: {
        AppRoutes.initial: (context) => const InitialPage(),
        AppRoutes.home: (context) => const HomePage(),
        AppRoutes.history: (context) => const HistoryPage(),
      },
    );
  }
}