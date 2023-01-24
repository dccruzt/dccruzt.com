import 'package:dccruzt/common/app_bar.dart';
import 'package:dccruzt/design_system/spacings.dart';
import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CommonAppBar(context: context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(x8),
        child: Container(),
      ),
    );
  }
}
