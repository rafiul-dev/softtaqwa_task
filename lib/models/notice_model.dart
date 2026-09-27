class Notice {
  final String id;
  final String title;
  final String preview;
  final String content;
  final String category;
  final DateTime date;
  final bool isImportant;

  const Notice({
    required this.id,
    required this.title,
    required this.preview,
    required this.content,
    required this.category,
    required this.date,
    this.isImportant = false,
  });
}
