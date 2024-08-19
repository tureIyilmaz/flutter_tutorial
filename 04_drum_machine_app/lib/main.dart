import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DrumMachine());
}

class DrumMachine extends StatefulWidget {
  const DrumMachine({super.key});

  @override
  State<DrumMachine> createState() => _DrumMachineState();
}

class _DrumMachineState extends State<DrumMachine> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Drum Game'),
          backgroundColor: Colors.grey,
        ),
        body: DrumPage(),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  DrumPage({super.key});

  final player = AudioPlayer();

  void playSound(String sound) async {
    await player.play(AssetSource('$sound.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: buildDrumPad('bip', Colors.red),
                ),
                Expanded(
                  child: buildDrumPad('bongo', Colors.pink),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: buildDrumPad('clap1', Colors.orange),
                ),
                Expanded(
                  child: buildDrumPad('clap2', Colors.yellow),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: buildDrumPad('clap3', Colors.green),
                ),
                Expanded(
                  child: buildDrumPad('crash', Colors.cyan),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: buildDrumPad('how', Colors.white),
                ),
                Expanded(
                  child: buildDrumPad('oobah', Colors.brown),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: buildDrumPad('ridebel', Colors.blue),
                ),
                Expanded(
                  child: buildDrumPad('woo', Colors.purpleAccent),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextButton buildDrumPad(String sound, Color color) {
    return TextButton(
      onPressed: () {
        playSound(sound);
      },
      child: Container(
        color: color,
      ),
    );
  }
}
