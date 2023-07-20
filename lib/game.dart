import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tetris/gird.dart';
import 'package:tetris/my_button.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  void startGame() {
    // resetPieces();
    // choosePieces();

    // const duration = const Duration(milliseconds: 300);
    // Timer.periodic(
    //   duration,
    //   (Timer timer) {
    //     print(landedPostColor);
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: MyGrid()),
            Container(
              height: 80,
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: startGame,
                    child: MyButton(
                      child: Text(
                        'PLAY',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  )),
                  Expanded(
                      child: MyButton(
                          child: Icon(Icons.arrow_back_ios_new_rounded))),
                  Expanded(
                      child: MyButton(
                          child: Icon(Icons.arrow_forward_ios_rounded))),
                  Expanded(child: MyButton(child: Icon(Icons.replay_rounded))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
