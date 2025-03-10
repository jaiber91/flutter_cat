part of '../package.dart';

class CatList extends ConsumerWidget {
  final String searchQuery;

  const CatList({super.key, required this.searchQuery});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
