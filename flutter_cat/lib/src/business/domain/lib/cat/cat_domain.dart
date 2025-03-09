class CatDomain {
  final String id;
  final String name;
  final String origin;
  final String description;
  final String temperament;
  final int intelligence;
  final String? imageUrl;
  final String? lifeSpan;
  final int adaptability;
  final int affectionLevel;
  final int childFriendly;
  final int dogFriendly;
  final int energyLevel;
  final int grooming;
  final int healthIssues;
  final int sheddingLevel;
  final int socialNeeds;
  final int strangerFriendly;
  final int vocalisation;
  final String? wikipediaUrl;

  CatDomain({
    required this.id,
    required this.name,
    required this.origin,
    required this.description,
    required this.temperament,
    required this.intelligence,
    this.imageUrl,
    this.lifeSpan,
    required this.adaptability,
    required this.affectionLevel,
    required this.childFriendly,
    required this.dogFriendly,
    required this.energyLevel,
    required this.grooming,
    required this.healthIssues,
    required this.sheddingLevel,
    required this.socialNeeds,
    required this.strangerFriendly,
    required this.vocalisation,
    this.wikipediaUrl,
  });
}
