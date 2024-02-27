import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:krestikinolikigame/app/routes/app_pages.dart';

import '../controllers/rooms_controller.dart';

class RoomsView extends GetView<RoomsController> {
  final String nickname;

  RoomsView({required this.nickname});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Крестики - нолики'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.blue[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Container(
                height: 300,
                width: 600,
                decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      child: Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 60, left: 15, right: 15, bottom: 10),
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        'Вы успешно авторизовались под ником $nickname.',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.PLAYPAGE, arguments: nickname);
                        // Navigate to create room page
                      },
                      child: Text('Создать комнату'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: Colors.blue[600],
                        padding: EdgeInsets.all(20), // increase padding
                        textStyle:
                            TextStyle(fontSize: 20), // increase font size
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.AVAILABLEROOMS,
                            arguments:
                                nickname); // Navigate to view available rooms page
                      },
                      child: Text('Посмотреть доступные комнаты'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: Colors.blue[600],
                        padding: EdgeInsets.all(20), // increase padding
                        textStyle:
                            TextStyle(fontSize: 20), // increase font size
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
