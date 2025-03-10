part of '../package.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _focusNode.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchQuery = ref.watch(searchQueryProvider);

    return GestureDetector(
      onTap: () => _focusNode.unfocus(),
      child: Scaffold(
        appBar: AppBar(title: const Text("Cat Breeds"), centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _searchField(),
              const SizedBox(height: 16),
              Expanded(child: _list(searchQuery)),
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
      onChanged: (value) {
        _onSearchChanged(value);
      },
    );
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();

    _debounce = Timer(const Duration(milliseconds: 500), () {
      ref.read(searchQueryProvider.notifier).state = query;
    });
  }

  Widget _list(String searchQuery) {
    final catAsync = searchQuery.isEmpty
        ? ref.watch(getCatProvider)
        : ref.watch(searchCatProvider(searchQuery));

    return catAsync.when(
      data: (cats) => ListView.builder(
        physics: const ClampingScrollPhysics(),
        itemCount: cats.length,
        itemBuilder: (context, index) {
          final cat = cats[index];
          return CatCard(
            imageUrl: cat.imageUrl ?? '',
            breedName: cat.name,
            country: cat.origin,
            intelligence: cat.intelligence,
            onTap: () {
              ref.read(selectedCatProvider.notifier).state = cat;
              context.go(RouteNames.detailPage.path);
            },
          );
        },
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(child: Text('Error: $err')),
    );
  }
}
