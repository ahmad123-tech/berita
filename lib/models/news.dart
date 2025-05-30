class NewsItem {
  final String title;
  final String source;
  final String timeAgo;
  final String imageUrl;

  NewsItem({
    required this.title,
    required this.source,
    required this.timeAgo,
    required this.imageUrl,
  });
}

class RecommendedTopic {
  final String title;
  final String source;
  final String timeAgo;
  final String imageUrl;
  final String tag;

  RecommendedTopic({
    required this.title,
    required this.source,
    required this.timeAgo,
    required this.imageUrl,
    required this.tag,
  });
}
