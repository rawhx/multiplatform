# Struktur Proyek Portofolio

## Directory

```
multi/
├── lib/
│   ├── main.dart                  # Entry point + MyApp + PortfolioPage (menyusun komponen)
│   ├── theme/
│   │   └── app_colors.dart        # AppColors: konstanta warna soft terpusat
│   └── widgets/
│       ├── profile_header.dart    # ProfileHeader: foto profil + nama + NIM
│       ├── section_title.dart     # SectionTitle(title:): judul section dengan garis ungu
│       ├── about_card.dart        # AboutCard: kartu "Tentang Saya"
│       ├── skills_chips.dart      # SkillsChips: chips keahlian
│       ├── project_card.dart      # ProjectCard: kartu proyek; ImageFallback: gambar error
│       └── contact_footer.dart    # ContactFooter: ikon kontak + copyright
├── test/
│   └── widget_test.dart           # Smoke test portofolio
├── assets/
│   └── images/
│       └── profile.png            # Foto profil (asset lokal)
└── pubspec.yaml                   # Dependensi + registrasi assets/images/
```

## Widget Tree

```
MyApp (MaterialApp)
└── PortfolioPage (Scaffold)
    ├── AppBar
    │   └── Text "Portofolio Saya"
    └── SingleChildScrollView
        └── Center
            └── ConstrainedBox (maxWidth: 720)          # responsif web & mobile
                └── Column
                    ├── ProfileHeader
                    │   ├── Container (ring gradient ungu-pink)
                    │   │   └── ClipOval
                    │   │       └── Image.asset("assets/images/profile.png")
                    │   ├── Text "Achmad Hasbil Wafi Rahmawan"
                    │   └── Container (pill putih)
                    │       └── Text "NIM 245150407111012"
                    ├── SectionTitle "Tentang Saya"
                    │   └── Row [Container garis ungu, Text]
                    ├── AboutCard
                    │   └── Container (kartu putih rounded + shadow)
                    │       └── Text deskripsi diri
                    ├── SectionTitle "Keahlian"
                    ├── SkillsChips
                    │   └── Align (kiri)
                    │       └── Wrap
                    │           └── Container chip × 6 (Flutter, Dart, Java, MySQL, Figma, Git)
                    │               └── Text nama skill
                    ├── SectionTitle "Proyek"
                    ├── ProjectCard — badge "Gambar dari URL"
                    │   ├── Stack
                    │   │   ├── AspectRatio (16/9)
                    │   │   │   └── Image.network(picsum id/180)
                    │   │   │       ├── loadingBuilder → CircularProgressIndicator
                    │   │   │       └── errorBuilder  → ImageFallback(cloud_off)
                    │   │   └── Positioned kanan-atas
                    │   │       └── Container badge → Text
                    │   └── Padding
                    │       └── Column [Text judul, Text deskripsi]
                    ├── SizedBox(height: 20)
                    ├── ProjectCard — badge "Gambar dari Network"
                    │   ├── Stack
                    │   │   ├── AspectRatio (16/9)
                    │   │   │   └── Image(image: NetworkImage(picsum id/1015))
                    │   │   │       ├── loadingBuilder → CircularProgressIndicator
                    │   │   │       └── errorBuilder  → ImageFallback(wifi_off)
                    │   │   └── Positioned kanan-atas
                    │   │       └── Container badge → Text
                    │   └── Padding
                    │       └── Column [Text judul, Text deskripsi]
                    ├── SizedBox(height: 28)
                    └── ContactFooter
                        └── Column
                            ├── Row
                            │   └── Container lingkaran × 3 (email, code, chat)
                            │       └── Icon
                            ├── SizedBox(height: 12)
                            ├── Text "© 2026 Achmad Hasbil Wafi Rahmawan"
                            └── SizedBox(height: 12)
```
