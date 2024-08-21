import 'dart:math';

class GameModel {
  static const List<String> choices = ["Pedra", "Papel", "Tesoura"];

  String? playerChoice;
  String? computerChoice;
  String? result;

  void play(String playerChoice) {
    this.playerChoice = playerChoice;
    computerChoice = _getRandomChoice();

    result = _getResult(playerChoice, computerChoice!);
  }

  String _getRandomChoice() {
    return choices[Random().nextInt(choices.length)];
  }

  String _getResult(String player, String computer) {
    if (player == computer) {
      return "Empate!";
    } else if ((player == "Pedra" && computer == "Tesoura") || (player == "Papel" && computer == "Pedra") || (player == "Tesoura" && computer == "Papel")) {
      return "Você ganhou!";
    } else {
      return "Você perdeu!";
    }
  }
}
