part of '../package.dart';

class DetailPage extends ConsumerWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCat = ref.watch(selectedCatProvider);

    if (selectedCat == null) {
      return _errorScreen();
    }

    return Scaffold(
      appBar: _appBar(selectedCat.name),
      body: Column(
        children: [
          _catImage(selectedCat.imageUrl),
          const SizedBox(height: 16),
          Expanded(child: _catDetails(selectedCat)),
        ],
      ),
    );
  }

  AppBar _appBar(String title) {
    return AppBar(
      leading: const BackButton(),
      title: Text(title),
      centerTitle: true,
    );
  }

  SizedBox _catImage(String? imageUrl) {
    return SizedBox(
      width: double.infinity,
      child: Image.network(
        imageUrl ?? "https://picsum.photos/200",
        height: 250,
        fit: BoxFit.cover,
      ),
    );
  }

  SingleChildScrollView _catDetails(CatDomain cat) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildText(cat.description, isBold: true),
          _buildText("País de origen: ${cat.origin}"),
          _buildText("Inteligencia: ${cat.intelligence}"),
          _buildText("Temperamento: ${cat.temperament}"),
          _buildText("Esperanza de vida: ${cat.lifeSpan}"),
          _buildText("Adaptabilidad: ${cat.adaptability}"),
          _buildText("Nivel de afecto: ${cat.affectionLevel}"),
          _buildText("Amigable con niños: ${cat.childFriendly}"),
          _buildText("Amigable con perros: ${cat.dogFriendly}"),
          _buildText("Nivel de energía: ${cat.energyLevel}"),
          _buildText("Nivel de aseo: ${cat.grooming}"),
          _buildText("Problemas de salud: ${cat.healthIssues}"),
          _buildText("Nivel de muda: ${cat.sheddingLevel}"),
          _buildText("Necesidades sociales: ${cat.socialNeeds}"),
          _buildText("Amigable con extraños: ${cat.strangerFriendly}"),
          _buildText("Vocalización: ${cat.vocalisation}"),
          if (cat.wikipediaUrl != null)
            TextButton(
              onPressed: () => LauncherUtils.launchLink(cat.wikipediaUrl!),
              child: const Text("Más información"),
            ),
        ],
      ),
    );
  }

  Padding _buildText(String text, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 16,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
      ),
    );
  }

  Scaffold _errorScreen() {
    return Scaffold(
      appBar: _appBar("Error"),
      body: const Center(child: Text('No se ha seleccionado ningún gato')),
    );
  }
}
