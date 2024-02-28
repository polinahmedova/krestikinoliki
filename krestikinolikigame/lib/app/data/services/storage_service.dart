import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:krestikinolikigame/app/data/models/new_user/new_user.dart';

class StorageService extends GetxService {
  late GetStorage box;
  //GetStorage box = GetStorage('main');
  Future<StorageService> init() async {
    await GetStorage.init('main');
    box = GetStorage('main');
    return this;
  }

  Future<void> writeUserData(NewUser data) async{
    var jsonData = data.toJson();
    var stringData = jsonEncode(jsonData);
    await box.write('userData', stringData);
  } //=> box.write('userData', jsonEncode(data.toJson()));
  NewUser? readUserData(){
    String stringData = box.read<String> ('userData') ?? 'none data';
    if(stringData == null) return null;
    print(stringData);
    Map<String, dynamic> jsonData = jsonDecode(stringData);
    NewUser data = NewUser.fromJson(jsonData);
    //var data = box.read<NewUser>('UserData');
    print(data);
  } //=> NewUser.fromJson(box.read('userData')) ;
}