
import 'package:get/get.dart';

class viewProductcontroller extends GetxController {

  int counter = 0;

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
