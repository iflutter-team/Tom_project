import 'dart:convert';

import 'package:get/get.dart';

import '../../model/tom_model.dart';
import '../../services/pref_service.dart';
import '../../utils/PrefrenceRes.dart';

class NavigationBarController extends GetxController {
  var tabIndex = 0.obs;
  User? loginUser;
  List<User>? userList;

  @override
  void onInit() {
    // TODO: implement onInit
    // getLoginUser();
    // getAllUser();
    super.onInit();
  }

  void getLoginUser(){
    String loginUserString = PrefService.getString(PrefRes.loginUser);
    loginUser = User.fromJson(json.decode(loginUserString));
    update(["LoginUser"]);
  }

  void getAllUser(){
    String allUserListStr = PrefService.getString(PrefRes.userList);
    userList = userFromJson(allUserListStr);
    update(["UserList"]);
  }


  void changeTabIndex(int index) {
    tabIndex.value = index;
    update();
  }
  @override
  void dispose() {
    super.dispose();
  }
}
