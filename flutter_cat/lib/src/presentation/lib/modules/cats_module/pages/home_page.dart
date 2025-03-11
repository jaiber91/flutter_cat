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
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SearchField(
                controller: _searchController,
                focusNode: _focusNode,
                onChanged: (value) {
                  ref.read(searchQueryProvider.notifier).state = value;
                },
              ),
              const SizedBox(height: 16),
              Expanded(
                child: CatList(searchQuery: searchQuery),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
