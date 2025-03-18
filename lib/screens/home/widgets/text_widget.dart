import '../../../core/utils/index.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const TextWidget({super.key, required this.text, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style:
          style ??
          Theme.of(context).textTheme.titleSmall?.copyWith(
            color: Theme.of(context).colorScheme.onTertiary,
            fontWeight: FontWeight.w300,
          ),
    );
  }
}
