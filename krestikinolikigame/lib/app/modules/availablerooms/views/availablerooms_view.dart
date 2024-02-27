import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/availablerooms_controller.dart';

class AvailableroomsView extends GetView<AvailableroomsController> {
  const AvailableroomsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AvailableroomsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AvailableroomsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
