class Recipe {
  final String title;
  final String description;

  Recipe({required this.title, required this.description});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'createdAt': DateTime.now(),
    };
  }
}
