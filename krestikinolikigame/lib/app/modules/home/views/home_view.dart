import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:krestikinolikigame/app/modules/rooms/views/rooms_view.dart';
import 'package:krestikinolikigame/app/routes/app_pages.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Крестики-нолики',
      home: PlayerNameScreen(),
    );
  }
}

class PlayerNameScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final RegExp _latinRegex = RegExp(r'^[a-zA-Z]+$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Крестики - нолики'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.blue[100],
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue[300],
            ),
            width: 500,
            height: 450,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Text(
                    'Добро пожаловать в игру "Крестики - нолики"!',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    'Для начала игры, пожалуйста, авторизуйтесь.',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                  width: 600,
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: 'Введите ник игрока:',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 70),
                Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.blue[600],
                    ),
                    onPressed: () {
                      String playerName = _controller.text;

                      if (_latinRegex.hasMatch(playerName)) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                RoomsView(nickname: playerName),
                          ),
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            //backgroundColor: Colors.blue,
                            title: Text('Ошибка!'),
                            content: Text(
                                'Ник должен быть написан латиницей! Другие символы недопустимы!'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('OK'),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    child: Text(
                      'Войти',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
