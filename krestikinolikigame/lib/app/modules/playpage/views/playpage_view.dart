// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(PlaypageView());
}

class PlaypageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TicTacToeBoard(),
    );
  }
}

class TicTacToeBoard extends StatefulWidget {
  @override
  _TicTacToeBoardState createState() => _TicTacToeBoardState();
}

class _TicTacToeBoardState extends State<TicTacToeBoard> {
  late List<List<String>> gameBoard;
  late bool isPlayerXTurn;

  @override
  void initState() {
    super.initState();
    resetBoard();
  }

  void resetBoard() {
    gameBoard = List.generate(3, (_) => List.generate(3, (_) => ''));
    isPlayerXTurn = true;
  }

  void makeMove(int row, int col) {
    setState(() {
      if (gameBoard[row][col] == '') {
        gameBoard[row][col] = isPlayerXTurn ? 'X' : 'O';
        isPlayerXTurn = !isPlayerXTurn;
        checkGameEnd();
      }
    });
  }

  void checkGameEnd() {
    // Check for winning conditions or a tie
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Крестики - нолики'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (BuildContext context, int index) {
                int row = index ~/ 3;
                int col = index % 3;
                return GestureDetector(
                  onTap: () {
                    makeMove(row, col);
                  },
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 300, maxHeight: 300),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Center(
                      child: Text(
                        gameBoard[row][col],
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                );
              },
              itemCount: 9,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  resetBoard();
                });
              },
              child: Text('Сбросить игру'),
            ),
          ],
        ),
      ),
    );
  }
}
