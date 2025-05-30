import 'package:flutter/material.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Berita'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/badminton.jpg',
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orange.shade100,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          'Olahraga',
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Bolasport.com',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '1 days ago',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Malaysia Masters 2025 - Titisan Lin Dan Merana Setelah Singkirkan Alwi Farhan, Kali Ini Gagal Bangkit meski Sudah Unggul 11-3',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Pebulu tangkis tunggal putra Indonesia, Alwi Farhan, berhasil membalas dendam kepada pemain China, Lei Lan Xi, pada babak pertama Malaysia Masters 2025.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Alwi Farhan mengalahkan Lei Lan Xi dengan skor 21-18, 21-16 dalam pertandingan yang berlangsung di Axiata Arena, Kuala Lumpur, Malaysia, Rabu (5/6/2025).',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Kemenangan ini menjadi pembalasan dendam bagi Alwi Farhan yang sebelumnya pernah dikalahkan oleh Lei Lan Xi pada turnamen Indonesia Open 2025 bulan lalu.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Pada gim pertama, Alwi Farhan sempat tertinggal 3-7 sebelum akhirnya mampu mengejar dan membalikkan keadaan. Sementara pada gim kedua, Alwi langsung tancap gas dan unggul jauh 11-3 pada interval.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Lei Lan Xi yang dijuluki sebagai "Titisan Lin Dan" karena gaya bermainnya yang mirip dengan legenda bulu tangkis China tersebut, tidak mampu bangkit meski sempat memperkecil ketinggalan menjadi 14-16 pada gim kedua.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Dengan kemenangan ini, Alwi Farhan melaju ke babak 16 besar Malaysia Masters 2025 dan akan menghadapi wakil dari Denmark, Viktor Axelsen.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Berita Terkait',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _buildRelatedNewsItem(
                    'Rekap Hasil Malaysia Masters 2025 - Dendam Tuntas Alwi Farhan, 3 Wakil Indonesia ke Babak 16 Besar',
                    'Bolasport.com',
                    '1 days ago',
                    'assets/images/badminton2.jpg',
                  ),
                  const SizedBox(height: 12),
                  _buildRelatedNewsItem(
                    'Jadwal Malaysia Masters 2025 Hari Ini - 5 Wakil Indonesia Berebut Tiket Perempat Final',
                    'Bolasport.com',
                    '5 hours ago',
                    'assets/images/badminton.jpg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRelatedNewsItem(
    String title,
    String source,
    String timeAgo,
    String imageUrl,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            imageUrl,
            width: 100,
            height: 70,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    source,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    timeAgo,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
