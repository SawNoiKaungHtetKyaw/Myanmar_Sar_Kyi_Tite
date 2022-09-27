import 'package:get/get.dart';
import 'package:myanmar_sar_kyi_tite/controller/author_controller.dart';
import 'package:myanmar_sar_kyi_tite/controller/book_controller.dart';
import 'package:myanmar_sar_kyi_tite/controller/dashboard_controller.dart';

class initDependencies implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => AuthorController());
    Get.lazyPut(() => BookController());
  }
}
