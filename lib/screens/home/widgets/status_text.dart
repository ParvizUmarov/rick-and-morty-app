
import '../../../core/utils/index.dart';

class StatusWidget extends StatelessWidget {
  final String status;

  const StatusWidget({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final containerColor = getContainerColor(status, context);
    return Container(
      decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: containerColor,
                blurRadius: 3
            )
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        child: Text(
          status,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }

  Color getContainerColor(String status, BuildContext context) {
    return switch (status) {
      "Alive" => Colors.green,
      "Dead" => Colors.red,
      String() => Theme.of(context).colorScheme.onSecondary,
    };
  }

}