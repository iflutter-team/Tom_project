import 'package:get/get.dart';
import 'package:tom_project/screen/Cart/cart_screen.dart';

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

  void cart(){
    Get.to(()=> Cart(),);
  }
}
