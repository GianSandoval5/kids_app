import 'package:flutter/material.dart';
import 'package:kids_app/src/routes/approutes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      routes: AppRoutes.routes,
    );
  }
}