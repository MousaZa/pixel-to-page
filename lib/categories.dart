import 'package:flutter/material.dart';

/// A simple class to hold the data for a category.
class AppCategory {
  final String title;
  final String description;
  final IconData icon;

  const AppCategory({
    required this.title,
    required this.description,
    required this.icon,
  });
}

// A list of all categories derived from your image.
// You can import this list directly into your Flutter app.
final List<AppCategory> appCategories = [
  AppCategory(
    title: 'Topluluk',
    description: 'Etkinlikler, gruplar, gönüllüler ve yerel topluluğunuzla bağlantı kurun.',
    icon: Icons.groups,
  ),
  AppCategory(
    title: 'Kalacak Yer',
    description: 'Kiralık daireler, odalar, devremülkler ve diğer konaklama seçeneklerini bulun.',
    icon: Icons.king_bed,
  ),
  AppCategory(
    title: 'İş İlanları',
    description: 'Çeşitli sektörlerdeki iş ilanlarına göz atın ve pozisyonlara başvurun.',
    icon: Icons.work,
  ),
  AppCategory(
    title: 'Hizmetler',
    description: 'Yaratıcı, hukuki, otomotiv ve teknoloji gibi yerel hizmetleri keşfedin.',
    icon: Icons.miscellaneous_services,
  ),
  AppCategory(
    title: 'Satılık',
    description: 'Elektronik, mobilya, araç ve daha fazlası için yeni veya kullanılmış ürünler.',
    icon: Icons.shopping_cart,
  ),
  AppCategory(
    title: 'Tartışma Forumları',
    description: 'Hobilerden siyasete, teknolojiden sanata kadar çeşitli konularda tartışmalara katılın.',
    icon: Icons.forum,
  ),
  AppCategory(
    title: 'Ufak İşler',
    description: 'Küçük, kısa vadeli işler ve serbest (freelance) görevler bulun veya yayınlayın.',
    icon: Icons.construction,
  ),
  AppCategory(
    title: 'Özgeçmişler',
    description: 'Özgeçmişinizi yayınlayın veya nitelikli adayları bulmak için CV\'lere göz atın.',
    icon: Icons.assignment_ind,
  ),
];
