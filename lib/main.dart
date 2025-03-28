import 'package:rick_and_morty_app/screens/screens.dart';
import 'core/utils/index.dart';

void main() {

  final chopperApiClient = ChopperApiClient();
  chopperApiClient.initializeChopperClient(
      baseUrl: "https://rickandmortyapi.com/api");

  final db = CharacterDb();

  runApp(App(apiClient: chopperApiClient, characterDb: db,));
}
