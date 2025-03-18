import 'dart:developer';

import '../../../core/utils/index.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Favorite"),
      body: BlocBuilder<FavoriteBloc, FavoriteState>(
        builder: (context, state) {
          log("favorite: $state");
          if(state is FavoriteSuccess) {
            final model = state.characters;
            if(model.isEmpty) {
              return EmptyContentWidget();
            }else{
              return ListOfCharacterWidget(characters: model);
            }
          } else {
            return EmptyContentWidget();
          }
        },
      ),
    );
  }
}
