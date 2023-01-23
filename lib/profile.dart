import 'package:dccruzt/design_system/spacings.dart';
import 'package:dccruzt/utils/texts.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SingleChildScrollView(
      child: SizedBox(
        width: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset('images/daniela.png', width: x30, height: x30),
                const SizedBox(width: x4),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Daniela Cruz', style: theme.textTheme.titleLarge),
                    Text(
                      'dccruzt@gmail.com',
                      style: theme.textTheme.bodySmall
                          ?.copyWith(color: Colors.white60),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: x4),
            const Text(aboutTitle),
            const SizedBox(height: x4),
            Text(
              aboutContent,
              style: theme.textTheme.bodySmall?.copyWith(color: Colors.white60),
            ),
            const SizedBox(height: x4),
            const Text(workExperienceTitle),
            const SizedBox(height: x4),
            const JobItem(
              date: job5Date,
              title: job5Title,
              description: job5Description,
            ),
            const JobItem(
              date: job4Date,
              title: job4Title,
              description: job4Description,
            ),
            const JobItem(
              date: job3Date,
              title: job3Title,
              description: job3Description,
            ),
            const JobItem(
              date: job2Date,
              title: job2Title,
              description: job2Description,
            ),
            const JobItem(
              date: job1Date,
              title: job1Title,
              description: job1Description,
            ),
            const SizedBox(height: x20),
          ],
        ),
      ),
    );
  }
}

class JobItem extends StatelessWidget {
  const JobItem({
    Key? key,
    required this.date,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String date;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(top: x4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: theme.textTheme.bodySmall?.copyWith(color: Colors.white60),
          ),
          const SizedBox(width: x8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                const SizedBox(height: x3),
                Text(
                  description,
                  style: theme.textTheme.bodySmall
                      ?.copyWith(color: Colors.white60),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
