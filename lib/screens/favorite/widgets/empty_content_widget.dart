import '../../../core/utils/index.dart';

class EmptyContentWidget extends StatelessWidget {
  const EmptyContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "No data",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.onTertiary,
            ),
          ),
        ],
      ),
    );
  }
}
