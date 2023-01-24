import 'package:dccruzt/common/app_bar.dart';
import 'package:dccruzt/common/footer.dart';
import 'package:flutter/material.dart';

import '../design_system/spacings.dart';
import '../utils/texts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CommonAppBar(context: context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/dani-background.jpg',
              width: 1800,
              height: 700,
              fit: BoxFit.fitWidth,
            ),
            Padding(
              padding: const EdgeInsets.all(x8),
              child: Row(
                children: [
                  const Expanded(child: Text(aboutTitle)),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(x16),
                      child: Text(
                        aboutContent,
                        style: theme.textTheme.labelLarge,
                        // ?.copyWith(color: Colors.white60),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Spacer(),
            CommonFooter(),
          ],
        ),
      ),
    );
  }
}
