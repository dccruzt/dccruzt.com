import 'package:dccruzt/common/app_bar.dart';
import 'package:dccruzt/design_system/spacings.dart';
import 'package:dccruzt/utils/texts.dart';
import 'package:flutter/material.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CommonAppBar(context: context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(x8),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/images/daniela.png',
                      width: x30, height: x30),
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
              const Text(workExperienceTitle),
              const SizedBox(height: x4),
              SizedBox(
                width: 900,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    JobItem(
                      date: job5Date,
                      title: job5Title,
                      description: job5Description,
                    ),
                    JobItem(
                      date: job4Date,
                      title: job4Title,
                      description: job4Description,
                    ),
                    JobItem(
                      date: job3Date,
                      title: job3Title,
                      description: job3Description,
                    ),
                    JobItem(
                      date: job2Date,
                      title: job2Title,
                      description: job2Description,
                    ),
                    JobItem(
                      date: job1Date,
                      title: job1Title,
                      description: job1Description,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: x20),
            ],
          ),
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
        mainAxisSize: MainAxisSize.min,
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
              mainAxisSize: MainAxisSize.min,
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
