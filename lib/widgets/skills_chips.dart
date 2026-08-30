import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class SkillsChips extends StatelessWidget {
  const SkillsChips({super.key});

  static const _skills = [
    ('Flutter', AppColors.softPurple),
    ('Dart', AppColors.softGreen),
    ('Go', AppColors.softBlue),
    ('MySQL', AppColors.softBlue),
    ('Figma', AppColors.softGreen),
    ('Git', AppColors.softPurple),
  ];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: _skills.map((skill) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: skill.$2.withValues(alpha: 0.45),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              skill.$1,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: AppColors.textDark,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
