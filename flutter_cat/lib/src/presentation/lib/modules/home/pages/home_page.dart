part of '../package.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final cat = await getIt<CatInPorts>().getCat(breeds: "Abyssinian");
      debugPrint('imprimiendo desde el home: ${cat.name}');
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Catbreeds")),
      body: _body(),
    );
  }

  Padding _body() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _searchField(),
          const SizedBox(height: 16),
          _list(),
        ],
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
    );
  }

  Expanded _list() {
    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return const CatCard(
            imageUrl: "https://picsum.photos/200/300",
            breedName: "Otra Raza",
            country: "Otro País",
            intelligence: 4,
          );
        },
      ),
    );
  }
}
