part of 'favorite_bloc.dart';

abstract class FavoriteEvent {}

class UpdateFavoriteList extends FavoriteEvent {
  final List<Character> characters;

  UpdateFavoriteList({required this.characters});
}

class SearchFavoriteList extends FavoriteEvent {
  final String name;

  SearchFavoriteList({required this.name});
}
