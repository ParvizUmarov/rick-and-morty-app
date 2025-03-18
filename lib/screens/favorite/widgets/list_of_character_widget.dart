import 'package:rick_and_morty_app/screens/home/widgets/character_container.dart';

import '../../../core/utils/index.dart';

class ListOfCharacterWidget extends StatelessWidget {
  final List<Character> characters;
  const ListOfCharacterWidget({super.key, required this.characters});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            final character = characters[index];
            return CharacterContainer(data: character);
          }, separatorBuilder: (context, index) {
        return 10.h;
      }, itemCount: characters.length),
    );
  }
}
