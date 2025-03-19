import 'package:rick_and_morty_app/screens/home/widgets/paginated_list_view.dart';

import '../../../core/utils/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Home"),
      body: PaginatedListView(),
    );
  }
}
