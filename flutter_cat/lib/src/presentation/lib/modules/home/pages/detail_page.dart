part of '../package.dart';

class DetailPage extends ConsumerWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCat = ref.watch(selectedCatProvider);

    if (selectedCat == null) {
      return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text('Error'),
          centerTitle: true,
        ),
        body: const Center(child: Text('No se ha seleccionado ningún gato')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(selectedCat.name),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.network(
              selectedCat.imageUrl ?? "https://picsum.photos/200",
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        selectedCat.description,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      Text("País de origen: ${selectedCat.origin}"),
                      const SizedBox(height: 8),
                      Text("Inteligencia: ${selectedCat.intelligence}"),
                      const SizedBox(height: 8),
                      Text("Temperamento: ${selectedCat.temperament}"),
                      const SizedBox(height: 8),
                      Text("Esperanza de vida: ${selectedCat.lifeSpan}"),
                      const SizedBox(height: 8),
                      Text("Adaptabilidad: ${selectedCat.adaptability}"),
                      const SizedBox(height: 8),
                      Text("Nivel de afecto: ${selectedCat.affectionLevel}"),
                      const SizedBox(height: 8),
                      Text("Amigable con niños: ${selectedCat.childFriendly}"),
                      const SizedBox(height: 8),
                      Text("Amigable con perros: ${selectedCat.dogFriendly}"),
                      const SizedBox(height: 8),
                      Text("Nivel de energía: ${selectedCat.energyLevel}"),
                      const SizedBox(height: 8),
                      Text("Nivel de aseo: ${selectedCat.grooming}"),
                      const SizedBox(height: 8),
                      Text("Problemas de salud: ${selectedCat.healthIssues}"),
                      const SizedBox(height: 8),
                      Text("Nivel de muda: ${selectedCat.sheddingLevel}"),
                      const SizedBox(height: 8),
                      Text("Necesidades sociales: ${selectedCat.socialNeeds}"),
                      const SizedBox(height: 8),
                      Text(
                          "Amigable con extraños: ${selectedCat.strangerFriendly}"),
                      const SizedBox(height: 8),
                      Text("Vocalización: ${selectedCat.vocalisation}"),
                      if (selectedCat.wikipediaUrl != null)
                        TextButton(
                          onPressed: () => LauncherUtils.launchLink(
                              selectedCat.wikipediaUrl!),
                          child: const Text("Más información"),
                        ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
