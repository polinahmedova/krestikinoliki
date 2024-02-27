import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/createroom_controller.dart';

class CreateroomView extends GetView<CreateroomController> {
  const CreateroomView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreateroomView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CreateroomView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
