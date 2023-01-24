import 'package:dccruzt/design_system/colors.dart';
import 'package:dccruzt/pages/blog_page.dart';
import 'package:dccruzt/pages/resume_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/home_page.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license =
        await rootBundle.loadString('assets/google_fonts/LICENSE.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    GoogleFonts.config.allowRuntimeFetching = false;
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
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/resume': (context) => const ResumePage(),
        '/blog': (context) => const BlogPage(),
      },
    );
  }
}
