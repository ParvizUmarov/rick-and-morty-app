import '../../../core/utils/index.dart';

class CharacterContainer extends StatelessWidget {
  final Character data;

  const CharacterContainer({super.key, required this.data});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Card(
        color: Theme.of(context).colorScheme.tertiary,
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: data.image,
              imageBuilder:
                  (context, imageProvider) => Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
              placeholder: (context, url) => CustomShimmer(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            Expanded(
              flex: 10,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: data.name,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onTertiary,
                      ),
                    ),
                    TextWidget(text: data.gender),
                    TextWidget(text: data.type),
                  ],
                ),
              ),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FavoriteButton(data: data),
                StatusWidget(status: data.status),
              ],
            ),
            10.w,
          ],
        ),
      ),
    );
  }
}
