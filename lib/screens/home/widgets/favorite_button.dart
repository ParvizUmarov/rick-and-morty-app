import '../../../core/utils/index.dart';

class FavoriteButton extends StatefulWidget {
  final Character data;

  const FavoriteButton({super.key, required this.data});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  var isFavorite = false;

  @override
  void initState() {
    super.initState();
    if(widget.data.isFavorite != null){
      isFavorite = widget.data.isFavorite!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        await context.read<FavoriteCubit>().chooseFavorite(widget.data);

        setState(() {
          isFavorite = true;
        });
      },
      icon: Icon(
        isFavorite ? Icons.star : Icons.star_border_outlined,
        color:
        isFavorite
            ? Colors.yellow
            : Theme.of(context).colorScheme.onTertiary,
      ),
    );
  }
}
