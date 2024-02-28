import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:krestikinolikigame/app/data/services/network_service.dart';

class HomeController extends GetxController {
  var textFieldCtrl = TextEditingController();
  final _networkService = Get.find<NetworkService>();

  auth() async {
    String nickname = textFieldCtrl.text;
    var regResult = false || await _networkService.registration(nickname);
    if (!regResult) {
      Get.showSnackbar(const GetSnackBar(title: "лох", message: 'ну лох проста'));
   }

    print(nickname);
  }
}
