part of '../package.dart';

// TODO: CREATE DESIGN SISTEMS FOR THIS WIDGET
class CatCard extends StatelessWidget {
  final String imageUrl;
  final String breedName;
  final String country;
  final int intelligence;
  final VoidCallback? onTap;

  const CatCard({
    super.key,
    required this.imageUrl,
    required this.breedName,
    required this.country,
    required this.intelligence,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final urlOptional =
        imageUrl.isEmpty ? "https://picsum.photos/200" : imageUrl;

    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    breedName,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Más...",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Image.network(
                urlOptional,
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "País de origen: $country",
                    style: const TextStyle(fontSize: 12),
                  ),
                  Text(
                    "Inteligencia: $intelligence",
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
