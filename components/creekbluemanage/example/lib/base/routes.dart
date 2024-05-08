import 'package:creek_blue_manage_example/pages/device/page/device_page.dart';
import 'package:creek_blue_manage_example/pages/file/page/file_page.dart';
import 'package:creek_blue_manage_example/pages/home/page/home_page.dart';
import 'package:creek_blue_manage_example/pages/home/photo/watch_face_photo_detail_binding.dart';
import 'package:creek_blue_manage_example/pages/home/photo/watch_face_photo_detail_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class Routes {
  static const homePage = '/pages/home/page/home_page';
  static const filePage = '/pages/file/page/file_page';
  static const devicePage = '/pages/device/page/device_page';

  static const watchFacePhotoCropper =
      '/pages/home/page/home_page/photo/cropper';
  static const watchFacePhoto = '/pages/home/page/home_page/photo';
}

final pages = <GetPage>[
  // GetPage(
  //   name: Routes.goalsPage,
  //   bindings: [
  //     BindingsBuilder.put(() => WorkbenchLogic()),
  //     BindingsBuilder.put(() => PersonLogic()),
  //   ],
  //   page: () => const IndexPage(),
  // ),
  GetPage(name: Routes.homePage, page: () => HomePage()),
  GetPage(name: Routes.filePage, page: () => FilePage()),
  GetPage(name: Routes.devicePage, page: () => DevicePage()),
  GetPage(
      name: Routes.watchFacePhoto,
      page: () => const WatchFacePhotoDetailPage(),
      binding: WatchFacePhotoDetailBinding()),
];
