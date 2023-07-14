import 'package:doctor_app/navigation.dart';
import 'package:doctor_app/settings/system/widget_settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          titleTextStyle: appbarStyle(),
          centerTitle: true,
        )
      ),
      home: const CustomBottomNavbar(),
    );
  }
}

