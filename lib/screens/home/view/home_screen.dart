import 'package:rick_and_morty_app/screens/home/widgets/paginated_list_view.dart';

import '../../../core/utils/index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CharacterCubit>().getCharacters(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Home"),
      body: BlocBuilder<CharacterCubit, CharacterState>(
        builder: (context, state) {
          if (state is CharacterProgress) {
            return Center(child: CircularProgressIndicator());
          } else if (state is CharacterSuccess) {
            final model = state.characters;
            return PaginatedListView(characters: model);
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
