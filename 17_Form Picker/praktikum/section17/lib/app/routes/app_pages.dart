import 'package:get/get.dart';

import 'package:section17/app/modules/home/bindings/home_binding.dart';
import 'package:section17/app/modules/home/views/home_view.dart';
import 'package:section17/app/modules/preview/bindings/preview_binding.dart';
import 'package:section17/app/modules/preview/views/preview_view.dart';

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
      name: _Paths.PREVIEW,
      page: () => PreviewView(),
      binding: PreviewBinding(),
    ),
  ];
}
