part of '../package.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _focusNode.unfocus(),
      child: Scaffold(
        appBar: AppBar(title: const Text("Cat Breeds")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _searchField(),
              const SizedBox(height: 16),
              Expanded(child: _list()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _searchField() {
    return TextField(
      controller: _searchController,
      focusNode: _focusNode,
      decoration: InputDecoration(
        labelText: "Buscar",
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onChanged: (value) {},
    );
  }

  Widget _list() {
    return Consumer(
      builder: (context, ref, child) {
        final catAsync = ref.watch(getCatProvider);
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
      },
    );
  }
}
