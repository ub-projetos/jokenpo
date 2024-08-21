import '../model/game_model.dart';

class GameController {
  final GameModel _game = GameModel();

  String get playerChoice => _game.playerChoice ?? "";
  String get computerChoice => _game.computerChoice ?? "";
  String get result => _game.result ?? "Faça sua escolha!";

  void playGame(String playerChoice) {
    _game.play(playerChoice);
  }
}
