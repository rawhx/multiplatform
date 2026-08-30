import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.textDark.withValues(alpha: 0.06),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: const Text(
        'Mahasiswa Sistem Informasi yang memiliki minat dalam pengembangan aplikasi mobile dan web. Terus belajar teknologi baru dan berfokus pada pengembangan solusi digital yang bermanfaat.',
        style: TextStyle(fontSize: 14, height: 1.7, color: AppColors.textSoft),
      ),
    );
  }
}
