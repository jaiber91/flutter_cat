part of '../package.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  List<String> items = [
    "Flutter",
    "Dart",
    "React Native",
    "Swift",
    "Kotlin",
    "Java",
    "Python"
  ];

  List<String> filteredItems = [];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final catAsync = ref.watch(getCatProvider); // Observa el provider

    return Scaffold(
      appBar: AppBar(title: const Text("Cat Breeds")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _searchField(),
            const SizedBox(height: 16),
            Expanded(child: _list(catAsync)), // ✅ Pasa la data al método _list
          ],
        ),
      ),
    );
  }

  TextField _searchField() {
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        labelText: "Buscar",
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onChanged: (value) {
        setState(() {}); // 🔥 Si quieres actualizar dinámicamente la UI
      },
    );
  }

  Widget _list(AsyncValue<List<CatDomain>> catAsync) {
    return catAsync.when(
      data: (cats) => ListView.builder(
        itemCount: cats.length,
        itemBuilder: (context, index) {
          final cat = cats[index];
          return CatCard(
            imageUrl: cat.imageUrl ?? '',
            breedName: cat.name,
            country: cat.origin,
            intelligence: cat.intelligence,
          );
        },
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(child: Text('Error: $err')),
    );
  }
}
