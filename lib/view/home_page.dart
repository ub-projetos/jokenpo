import 'package:flutter/material.dart';

import '../controller/game_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GameController _controller = GameController();

  void _handleChoice(String choice) {
    setState(() {
      _controller.playGame(choice);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Jokenpo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Escolha do Jogador: ${_controller.playerChoice}', style: const TextStyle(fontSize: 20)),
            Text('Escolha do Computador: ${_controller.computerChoice}', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            Text(_controller.result, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => _handleChoice("Pedra"),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset('assets/img/pedra.png', width: 32),
                        const Text("Pedra"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _handleChoice("Papel"),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset('assets/img/papel.png', width: 32),
                        const Text("Papel"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _handleChoice("Tesoura"),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset('assets/img/tesoura.png', width: 32),
                        const Text("Tesoura"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
