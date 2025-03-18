part of 'character_cubit.dart';

@immutable
class CharacterState {}

class CharacterInitial extends CharacterState {}

class CharacterProgress extends CharacterState {}

class CharacterSuccess extends CharacterState {
  final List<Character> characters;

  CharacterSuccess({required this.characters});
}

class CharacterError extends CharacterState {
  final String error;

  CharacterError({required this.error});
}
