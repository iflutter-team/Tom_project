import 'dart:convert';

import 'package:get/get.dart';

import '../../model/tom_model.dart';
import '../../services/pref_service.dart';
import '../../utils/PrefrenceRes.dart';

class NavigationBarController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
    update();
  }
  @override
  void dispose() {
    super.dispose();
  }
}
