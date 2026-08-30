import 'package:flutter/material.dart';

import 'theme/app_colors.dart';
import 'widgets/about_card.dart';
import 'widgets/contact_footer.dart';
import 'widgets/profile_header.dart';
import 'widgets/project_card.dart';
import 'widgets/section_title.dart';
import 'widgets/skills_chips.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portofolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme:
            ColorScheme.fromSeed(seedColor: AppColors.softPurple),
        scaffoldBackgroundColor: AppColors.background,
      ),
      home: const PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width > 720;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: const Text(
          'Portofolio Saya',
          style: TextStyle(
            color: AppColors.textDark,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: isWide ? 40 : 20,
          vertical: 24,
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: Column(
              children: [
                const ProfileHeader(),
                const SectionTitle('Tentang Saya'),
                const AboutCard(),
                const SectionTitle('Keahlian'),
                const SkillsChips(),
                const SectionTitle('Proyek'),
                ProjectCard(
                  title: 'Aplikasi Kasir Toko',
                  description:
                      'Aplikasi pencatatan transaksi harian dengan laporan '
                      'penjualan sederhana, dibuat menggunakan Flutter.',
                  badge: 'Gambar dari URL',
                  image: Image.network(
                    'https://picsum.photos/id/180/800/450',
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, progress) =>
                        progress == null
                            ? child
                            : const Center(
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              ),
                    errorBuilder: (context, error, stackTrace) =>
                        const ImageFallback(Icons.cloud_off_outlined),
                  ),
                ),
                const SizedBox(height: 20),
                ProjectCard(
                  title: 'Katalog Wisata Alam',
                  description:
                      'Galeri destinasi wisata dengan tampilan gambar dari '
                      'internet dan informasi singkat tiap lokasi.',
                  badge: 'Gambar dari Network',
                  image: Image(
                    image: const NetworkImage(
                      'https://picsum.photos/id/1015/800/450',
                    ),
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, progress) =>
                        progress == null
                            ? child
                            : const Center(
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              ),
                    errorBuilder: (context, error, stackTrace) =>
                        const ImageFallback(Icons.wifi_off_outlined),
                  ),
                ),
                const SizedBox(height: 28),
                const ContactFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
