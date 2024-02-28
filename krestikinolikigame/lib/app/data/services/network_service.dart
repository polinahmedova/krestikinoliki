import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:krestikinolikigame/app/data/models/new_user/new_user.dart';
import 'package:krestikinolikigame/app/data/services/storage_service.dart';

class NetworkService extends GetxService {
  var storage = Get.find<StorageService>();
  var client = Dio(BaseOptions(baseUrl: 'https://ttt.bulbaman.me/'));

  //Rx<NewUser?> user = null.obs;
  NewUser? user;
  Future<NetworkService> init() async {
    await readPrefs();
    return this;
  }
  Future <void> readPrefs() async {
    var userReaded = await storage.readUserData();
    print(userReaded);
  }

Future<bool> registration(String nick) async{
  try{
    var response = await client.post("user/add/$nick");
    var newUser = NewUser.fromJson(response.data);
    user.value = newUser;
    storage.writeUserData(user.value!);
    //print(response.data);
    return true;
  } catch (e) {
    print(e);
    return false;
  }
}
}