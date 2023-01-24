import 'package:flutter/material.dart';

import '../design_system/spacings.dart';

class CommonFooter extends StatelessWidget {
  const CommonFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(x8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: const Icon(Icons.mediation),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.install_desktop),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.mediation),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.mediation),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
