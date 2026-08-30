import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class ContactFooter extends StatelessWidget {
  const ContactFooter({super.key});

  static const _contacts = [
    (Icons.email_outlined, AppColors.softBlue),
    (Icons.code_outlined, AppColors.softPurple),
    (Icons.chat_bubble_outline_rounded, AppColors.softPink),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _contacts
              .map(
                (contact) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  width: 48,
                  height: 48,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: contact.$2),
                  child: Icon(contact.$1, size: 22, color: Colors.white),
                ),
              )
              .toList(),
        ),
        SizedBox(height: 12),
        Text(
          '© 2026 Achmad Hasbil Wafi Rahmawan',
          style: TextStyle(fontSize: 12, color: AppColors.textSoft),
        ),
        SizedBox(height: 12),
      ],
    );
  }
}
