class Project {
  final String title;
  final String subtitle;
  final String author;
  final String grade;
  final String image;

  Project({
    required this.title,
    required this.subtitle,
    required this.author,
    required this.grade,
    required this.image,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      title: json['title'] ?? '',
      subtitle: json['subtitle'] ?? '',
      author: json['author'] ?? '',
      grade: json['grade'] ?? '',
      image: json['image'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subtitle': subtitle,
      'author': author,
      'grade': grade,
      'image': image,
    };
  }
}
