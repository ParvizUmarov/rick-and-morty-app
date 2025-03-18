import 'dart:developer';
import '../../../core/utils/index.dart';

part 'character_state.dart';

class CharacterCubit extends Cubit<CharacterState> {
  CharacterCubit({required CharacterRepository characterRepository})
    : _characterRepository = characterRepository,
      super(CharacterInitial());

  final CharacterRepository _characterRepository;

  Future<void> getCharacters(int page) async {
    emit(CharacterProgress());
    try {
      await _characterRepository.getCharacters(
        page,
        ResultCallbackImpl(
            onSuccess: (result) {
              emit(CharacterSuccess(characters: result));
            },
            onError: (value) {
              emit(CharacterError(error: value));
            }),
      );
    } catch (e) {
      log("Error while call get characters: $e");
      emit(CharacterError(error: e.toString()));
    }
  }
}
