import 'package:dccruzt/design_system/spacings.dart';
import 'package:flutter/material.dart';

const Map<String, String> routes = {
  '/blog': 'Blog',
  '/resume': 'Resume',
};

class ActionBarItem extends StatelessWidget {
  const ActionBarItem({Key? key, required this.routeName}) : super(key: key);

  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(x2),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, routeName),
        child: Center(child: Text(routes[routeName]!)),
      ),
    );
  }
}

class CommonAppBar extends AppBar {
  CommonAppBar({super.key, required BuildContext context})
      : super(actions: [
          const ActionBarItem(routeName: '/resume'),
          const ActionBarItem(routeName: '/blog'),
        ]);
}
