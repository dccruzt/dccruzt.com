import 'package:dccruzt/design_system/colors.dart';
import 'package:dccruzt/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final customTextTheme = GoogleFonts.robotoMonoTextTheme().apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
    );

    return MaterialApp(
      title: 'Daniela Cruz',
      theme: ThemeData(
        primarySwatch: primaryBlack,
        scaffoldBackgroundColor: Colors.black,
        textTheme: customTextTheme,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(child: ProfileScreen()),
    );
  }
}
