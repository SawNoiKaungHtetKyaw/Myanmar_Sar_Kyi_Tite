import 'package:get/get.dart';

class DashboardController extends GetxController {
  var tabIndex = 0.obs;
  void changeTabIndex(var index) {
    tabIndex.value = index;
    update();
  }
}
