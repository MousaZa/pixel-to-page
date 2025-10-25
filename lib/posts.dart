import 'package:flutter/material.dart';

class Post {
  final String title;
  final String shortDescription; // Renamed from description
  final String longDescription; // Added new property

  const Post({
    required this.title,
    required this.shortDescription, // Updated constructor
    required this.longDescription, // Updated constructor
  });
}


final List<String> randomImages = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5qx_uGA9GMs4EhMof08RkJHNxpXRAwjaDPQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7J8Jpm-rmirYR0zDgHdgkm2z-RB7ay7RGUw&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYuBli3tDZPfOwnR64PKm9er4D5vjLRsvxNNHwIeYQYJDn9YSwZXVuU3bDe-8d12M9HO0&usqp=CAU",
  "https://uk.adp.com/-/media/adpglobal/insights/paw-2024/hub/background-image-videohub.jpg?rev=5ee6619f0e804d94b0eaa6121c4d631c&hash=09604D784CD3DD2DA90782E3AAAF9D4F",
  "https://in.adp.com/-/media/adpglobal/insights/paw-2024/hub/india/paw-hero-india.jpg?rev=66b9ebd0032b49f7bfe2b5a05c3d87a3&hash=3F434572954E980DEC35E0DE594B28AC",
];


// A list of all categories derived from the "İş İlanları" section, now using Post class.
final List<Post> workAdsCategories = [
  Post(
    title: 'Biyoteknoloji/Mühendislik',
    shortDescription: 'Biyoteknoloji ve mühendislik alanlarındaki iş ilanları.',
    longDescription: 'Alanında Biyoteknoloji veya Mühendislik uzmanı olarak kariyer fırsatlarını keşfedin. Araştırma, geliştirme, üretim ve ilgili pozisyonlar için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Devlet',
    shortDescription: 'Kamu sektörü ve devlet dairesi iş ilanları.',
    longDescription: 'Alanında Devlet memuru veya kamu çalışanı olarak kariyer fırsatlarını keşfedin. Kamu sektörü ve devlet dairelerindeki idari, teknik ve çeşitli pozisyonlar için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Eğitim Öğretim',
    shortDescription: 'Öğretmenlik, akademik ve eğitim sektörü iş ilanları.',
    longDescription: 'Alanında Eğitimci veya Öğretmen olarak kariyer fırsatlarını keşfedin. Öğretmenlik, akademik kadrolar, eğitim danışmanlığı ve ilgili pozisyonlar için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Emlak',
    shortDescription: 'Gayrimenkul ve emlak sektörü iş ilanları.',
    longDescription: 'Alanında Emlak danışmanı veya uzmanı olarak kariyer fırsatlarını keşfedin. Gayrimenkul ve emlak sektöründeki satış, kiralama ve yönetim pozisyonları için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Etc / Misc',
    shortDescription: 'Diğer ve çeşitli kategorilere uymayan iş ilanları.',
    longDescription: 'Alanında Çeşitli sektörlerde kariyer fırsatlarını keşfedin. Diğer ve çeşitli kategorilere uymayan, farklı yetenek setleri gerektiren pozisyonlar için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Genel İşçilik',
    shortDescription: 'Genel işçilik ve vasıfsız eleman ilanları.',
    longDescription: 'Alanında Genel işçi veya vasıfsız eleman olarak kariyer fırsatlarını keşfedin. Üretim, inşaat, lojistik ve genel hizmetler için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Güvenlik',
    shortDescription: 'Güvenlik görevlisi ve koruma hizmetleri iş ilanları.',
    longDescription: 'Alanında Güvenlik görevlisi olarak kariyer fırsatlarını keşfedin. Özel güvenlik, tesis koruma ve benzeri hizmetler için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Hukuk',
    shortDescription: 'Avukat, danışman ve hukuk sektörü iş ilanları.',
    longDescription: 'Alanında Avukat veya Hukuk danışmanı olarak kariyer fırsatlarını keşfedin. Hukuk büroları, şirketlerin hukuk departmanları ve danışmanlık firmaları için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'İnsan Kaynakları',
    shortDescription: 'İK departmanları için işe alım ve yönetim pozisyonları.',
    longDescription: 'Alanında İnsan Kaynakları uzmanı olarak kariyer fırsatlarını keşfedin. İşe alım, bordro, eğitim ve İK yönetimi pozisyonları için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'İşletmecilik / Yönetim',
    shortDescription: 'Yönetici, idari ve işletme pozisyonları.',
    longDescription: 'Alanında İşletmeci veya Yönetici olarak kariyer fırsatlarını keşfedin. Orta ve üst düzey yöneticilik, idari işler ve işletme yönetimi pozisyonları için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Kuaför / Spa / Fitness',
    shortDescription: 'Güzellik, sağlık ve spor merkezi iş ilanları.',
    longDescription: 'Alanında Kuaför, Spa terapisti veya Fitness eğitmeni olarak kariyer fırsatlarını keşfedin. Güzellik salonları, spor merkezleri ve sağlık tesisleri için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Mimarlık / Mühendislik',
    shortDescription: 'Mimari tasarım ve çeşitli mühendislik dalları için ilanlar.',
    longDescription: 'Alanında Mimar veya Mühendis olarak kariyer fırsatlarını keşfedin. İnşaat, makine, elektrik, yazılım mühendisliği ve mimari tasarım pozisyonları için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Muhasebe+Finans',
    shortDescription: 'Finansal yönetim, muhasebe ve bankacılık iş ilanları.',
    longDescription: 'Alanında Muhasebe veya Finans uzmanı olarak kariyer fırsatlarını keşfedin. Bankacılık, finansal analiz, muhasebe ve denetim pozisyonları için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Müşteri Hizmetleri',
    shortDescription: 'Çağrı merkezi, destek ve müşteri ilişkileri pozisyonları.',
    longDescription: 'Alanında Müşteri Hizmetleri temsilcisi olarak kariyer fırsatlarını keşfedin. Çağrı merkezi, teknik destek ve müşteri ilişkileri yönetimi pozisyonları için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Pazarlama/Halkla İlişkiler',
    shortDescription: 'Pazarlama, reklam ve halkla ilişkiler (PR) iş ilanları.',
    longDescription: 'Alanında Pazarlama veya Halkla İlişkiler uzmanı olarak kariyer fırsatlarını keşfedin. Dijital pazarlama, marka yönetimi, reklam ve PR ajansları için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Perakende / Toptan',
    shortDescription: 'Mağazacılık, perakende ve toptan satış iş ilanları.',
    longDescription: 'Alanında Perakende veya Toptan satış yöneticisi olarak kariyer fırsatlarını keşfedin. Mağaza yönetimi, satış temsilciliği ve perakende operasyonları için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Sanat / Medya / Tasarım',
    shortDescription: 'Yaratıcı endüstriler, medya ve tasarım iş ilanları.',
    longDescription: 'Alanında Sanatçı, Tasarımcı veya Medya çalışanı olarak kariyer fırsatlarını keşfedin. Grafik tasarım, içerik üretimi, medya planlama ve yaratıcı ajans pozisyonları için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Satış / İş Geliştirme',
    shortDescription: 'Satış temsilcisi, ekip lideri ve iş geliştirme pozisyonları.',
    longDescription: 'Alanında Satış veya İş Geliştirme uzmanı olarak kariyer fırsatlarını keşfedin. Kurumsal satış, saha satışı ve stratejik iş geliştirme pozisyonları için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Sistem / Network',
    shortDescription: 'IT, sistem yönetimi ve ağ uzmanı iş ilanları.',
    longDescription: 'Alanında Sistem veya Network uzmanı olarak kariyer fırsatlarını keşfedin. Bilgi teknolojileri, sistem yönetimi, ağ güvenliği ve IT altyapı pozisyonları için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Sivil Toplum Sektörü',
    shortDescription: 'Vakıf, dernek ve sivil toplum kuruluşları için iş ilanları.',
    longDescription: 'Alanında Sivil Toplum çalışanı olarak kariyer fırsatlarını keşfedin. Vakıflar, dernekler ve STK\'lardaki proje yönetimi, fon geliştirme ve sosyal hizmet pozisyonları için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Teknik Destek',
    shortDescription: 'Teknik servis ve IT destek pozisyonları.',
    longDescription: 'Alanında Teknik Destek uzmanı olarak kariyer fırsatlarını keşfedin. Kullanıcı desteği, IT yardım masası ve teknik servis pozisyonları için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Tıp / Sağlık',
    shortDescription: 'Doktor, hemşire ve diğer sağlık personeli ilanları.',
    longDescription: 'Alanında Doktor, Hemşire veya Sağlık personeli olarak kariyer fırsatlarını keşfedin. Hastaneler, klinikler ve sağlık kuruluşlarındaki çeşitli tıbbi pozisyonlar için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'TV / Film / Video',
    shortDescription: 'Prodüksiyon, yayıncılık ve video sektörü iş ilanları.',
    longDescription: 'Alanında TV, Film veya Video prodüksiyonu çalışanı olarak kariyer fırsatlarını keşfedin. Prodüksiyon, kurgu, yönetmenlik ve yayıncılık pozisyonları için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Ulaşım',
    shortDescription: 'Lojistik, şoförlük ve ulaşım sektörü iş ilanları.',
    longDescription: 'Alanında Ulaşım veya Lojistik uzmanı olarak kariyer fırsatlarını keşfedin. Lojistik planlama, şoförlük ve ulaştırma hizmetleri pozisyonları için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Üretim',
    shortDescription: 'Endüstriyel üretim, fabrika ve imalat iş ilanları.',
    longDescription: 'Alanında Üretim çalışanı veya yöneticisi olarak kariyer fırsatlarını keşfedin. Fabrikalar, imalat tesisleri ve endüstriyel üretim hatlarındaki pozisyonlar için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Web / Bilgi Tasarımı',
    shortDescription: 'Web geliştirme, UI/UX ve bilgi tasarımı iş ilanları.',
    longDescription: 'Alanında Web Geliştirici veya UI/UX Tasarımcısı olarak kariyer fırsatlarını keşfedin. Front-end, back-end geliştirme, kullanıcı deneyimi tasarımı ve bilgi mimarisi pozisyonları için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Yazarlık / Redaksiyon',
    shortDescription: 'İçerik yazarlığı, editörlük ve redaksiyon iş ilanları.',
    longDescription: 'Alanında Yazar veya Editör olarak kariyer fırsatlarını keşfedin. İçerik oluşturma, teknik yazarlık, editörlük ve redaksiyon pozisyonları için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Yazılım / Kalite Güvence',
    shortDescription: 'Yazılım geliştirme ve QA (kalite güvence) iş ilanları.',
    longDescription: 'Alanında Yazılım Geliştirici veya Kalite Güvence (QA) uzmanı olarak kariyer fırsatlarını keşfedin. Mobil, web ve masaüstü uygulama geliştirme, yazılım testi ve otomasyon pozisyonları için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Yiyecek / İçecek / Otelcilik',
    shortDescription: 'Restoran, kafe, otel ve turizm sektörü iş ilanları.',
    longDescription: 'Alanında Yiyecek, İçecek veya Otelcilik çalışanı olarak kariyer fırsatlarını keşfedin. Restoranlar, kafeler, oteller ve turizm tesislerindeki aşçılık, garsonluk ve otel yönetimi pozisyonları için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Yönetim / Ofis',
    shortDescription: 'Ofis yönetimi, asistanlık ve idari destek iş ilanları.',
    longDescription: 'Alanında Ofis Yöneticisi veya Asistan olarak kariyer fırsatlarını keşfedin. Ofis yönetimi, yönetici asistanlığı ve idari destek pozisyonları için en güncel ilanlara göz atın.',
  ),
  Post(
    title: 'Zanaat',
    shortDescription: 'Zanaatkarlar ve el işçiliği gerektiren pozisyonlar.',
    longDescription: 'Alanında Zanaatkar olarak kariyer fırsatlarını keşfedin. Marangozluk, terzilik, çömlekçilik ve diğer el işçiliği gerektiren özel pozisyonlar için en güncel ilanlara göz atın.',
  ),
];


