import 'package:get/get.dart';

import '../modules/availablerooms/bindings/availablerooms_binding.dart';
import '../modules/availablerooms/views/availablerooms_view.dart';
import '../modules/createroom/bindings/createroom_binding.dart';
import '../modules/createroom/views/createroom_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/playpage/bindings/playpage_binding.dart';
import '../modules/playpage/views/playpage_view.dart';
import '../modules/rooms/bindings/rooms_binding.dart';
import '../modules/rooms/views/rooms_view.dart';
import '../modules/playpage/bindings/playpage_binding.dart';
import '../modules/playpage/views/playpage_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ROOMS,
      page: () => RoomsView(
        nickname: '',
      ),
      binding: RoomsBinding(),
    ),
    GetPage(
      name: _Paths.AVAILABLEROOMS,
      page: () => const AvailableroomsView(),
      binding: AvailableroomsBinding(),
    ),
    GetPage(
      name: _Paths.CREATEROOM,
      page: () => const CreateroomView(),
      binding: AvailableroomsBinding(),
    ),
    GetPage(
      name: _Paths.PLAYPAGE,
      page: () => PlaypageView(),
      binding: PlaypageBinding(),
    ),
  ];
}
