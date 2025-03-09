class CatDomain {
  final String id;
  final String name;
  final String origin;
  final String description;
  final String temperament;
  final String? imageUrl;

  CatDomain({
    required this.id,
    required this.name,
    required this.origin,
    required this.description,
    required this.temperament,
    this.imageUrl,
  });
}
