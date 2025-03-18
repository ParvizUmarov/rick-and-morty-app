
import '../utils/index.dart';

class CustomShimmer extends StatelessWidget {
  const CustomShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.black,
        highlightColor: Colors.grey.shade100,
        child: SizedBox(
          width: 100,
          height: 100,
        ));
  }
}
