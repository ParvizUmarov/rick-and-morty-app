import 'dart:developer';

import '../../../core/utils/index.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Favorite"),
      body: Column(
        children: [
          20.h,
          FilterTextField(),
          BlocBuilder<FavoriteBloc, FavoriteState>(
            builder: (context, state) {
              log("favorite: $state");
              if(state is FavoriteSuccess) {
                final model = state.characters;
                if(model.isEmpty) {
                  return EmptyContentWidget();
                }else{
                  return Expanded(child: ListOfCharacterWidget(characters: model));
                }
              } else if (state is FavoriteProgress) {
                return CircularProgressIndicator();
              } else {
                return EmptyContentWidget();
              }
            },
          ),
        ],
      ),
    );
  }
}
