import 'package:flutter/material.dart';
import '../widgets/bottom_navigation.dart';
import '../models/news.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _popularTags = [
    '#BarakMiliter',
    '#Jokowi',
    '#KDM',
    '#KaburAjaDulu',
  ];

  final List<NewsItem> _latestNews = [
    NewsItem(
      title: 'Malaysia Masters 2025 - Titisan Lin Dan Merana Setelah Singkirkan Alwi Farhan, Kali Ini Gagal Bangkit meski Sudah Unggul 11-3',
      source: 'Bolasport.com',
      timeAgo: '1 days ago',
      imageUrl: 'assets/images/badminton.jpg',
    ),
    NewsItem(
      title: 'Rekap Hasil Malaysia Masters 2025 - Dendam Tuntas Alwi Farhan, 3 Wakil Indonesia ke Babak 16 Besar, China Merana',
      source: 'Bolasport.com',
      timeAgo: '1 days ago',
      imageUrl: 'assets/images/badminton2.jpg',
    ),
  ];

  final List<RecommendedTopic> _recommendedTopics = [
    RecommendedTopic(
      title: 'Syarat Pengajuan Klaim Jaminan Kehilangan Pekerjaan',
      source: 'Tempo.com',
      timeAgo: '1 month ago',
      imageUrl: 'assets/images/bpjs.jpg',
      tag: 'BPJS Ketenagakerjaan',
    ),
    RecommendedTopic(
      title: 'Kuota Harga Spesial Chery Tiggo 8 CSH Tinggal 50 Persen',
      source: 'Kompas.com',
      timeAgo: '1 hour ago',
      imageUrl: 'assets/images/tiggo.jpg',
      tag: 'TIGGO CSH',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'search',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Popular Tags',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _popularTags.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          _popularTags[index],
                          style: const TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Terbaru',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _latestNews.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/news_detail');
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              _latestNews[index].imageUrl,
                              width: double.infinity,
                              height: 180,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            _latestNews[index].title,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                _latestNews[index].source,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                _latestNews[index].timeAgo,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Rekomendasi Topik',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _recommendedTopics.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/news_detail');
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              _recommendedTopics[index].imageUrl,
                              width: 100,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    _recommendedTopics[index].tag,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  _recommendedTopics[index].title,
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
                                      _recommendedTopics[index].source,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      _recommendedTopics[index].timeAgo,
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
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigation(currentIndex: 0),
    );
  }
}
