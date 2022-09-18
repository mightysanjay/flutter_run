import 'package:flutter/material.dart';
import 'package:maze/maze.dart';

class MazePage extends StatefulWidget {
  const MazePage({super.key});

  @override
  State<MazePage> createState() => _MazePageState();
}

class _MazePageState extends State<MazePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find the way'),
      ),
      body: SafeArea(
        child: Maze(
          player: MazeItem(
            'https://img.freepik.com/free-photo/fun-cartoon-kid-with-rain-gear_183364-81176.jpg?size=626&ext=jpg',
            ImageType.network,
          ),
          columns: 10,
          rows: 18,
          wallThickness: 4.0,
          wallColor: Theme.of(context).primaryColor,
          finish: MazeItem(
            'https://cdn-icons-png.flaticon.com/128/1237/1237923.png',
            ImageType.network,
          ),
          onFinish: () => print("Game Over"),
        ),
      ),
    );
  }
}
