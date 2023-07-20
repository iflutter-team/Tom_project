import 'package:get/get.dart';

class ViewProductcontroller extends GetxController {
  int counter = 1;
  bool value = false;

  int? index;
  ViewProductcontroller(this.index,);

  var data = Get.arguments;

  // void like(){
  //   value!=value;
  //   update(['like']);
  // }

  void add() {
    counter++;
    print(counter);
    update(['add']);
  }

  void hello() {
    if (counter != 1) {
      counter--;
      print(counter);
    }
    update(['add']);
  }
}
