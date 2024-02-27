import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:krestikinolikigame/app/routes/app_pages.dart';

import '../controllers/rooms_controller.dart';

class RoomsView extends GetView<RoomsController> {
  final String nickname;

  RoomsView({required this.nickname});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Крестики-нолики',
    );
  }
}
