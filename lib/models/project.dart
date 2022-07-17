// ignore_for_file: public_member_api_docs, sort_constructors_first
class Project {
  String name;
  int year;
  String imageUrl;
  String description;
  List<String>? technologiesUsed;

  Project({
    required this.name,
    required this.year,
    required this.imageUrl,
    required this.description,
    this.technologiesUsed,
  });
}
