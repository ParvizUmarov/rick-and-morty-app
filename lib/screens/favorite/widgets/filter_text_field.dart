import '../../../core/utils/index.dart';

class FilterTextField extends StatelessWidget {
  const FilterTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Search by name",
          fillColor: Theme.of(context).colorScheme.tertiary,
          filled: true,
        ),
        onChanged: (value){
          context.read<FavoriteBloc>().add(SearchFavoriteList(name: value));
        },

      ),
    );
  }
}
