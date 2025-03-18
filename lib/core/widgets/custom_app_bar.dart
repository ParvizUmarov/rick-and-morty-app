
import '../utils/index.dart';

PreferredSizeWidget customAppBar(String title){
  return AppBar(
    actions: [
      ActionWidget(),
      10.w
    ],
    centerTitle: true,
    title: Text(title),
  );
}