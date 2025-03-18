part of 'favorite_bloc.dart';

@immutable
abstract class FavoriteState{}

class FavoriteInitial extends FavoriteState{}
class FavoriteProgress extends FavoriteState{}

class FavoriteSuccess extends FavoriteState{
  final List<Character> characters;

  FavoriteSuccess({required this.characters});
}

class FavoriteError extends FavoriteState{
  final String? error;

  FavoriteError(this.error);
}

