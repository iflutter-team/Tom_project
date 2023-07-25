import 'package:carousel_slider/carousel_options.dart';
import 'package:get/get.dart';

class ViewProductcontroller extends GetxController {
  int counter = 0;
  int count = 0;
  bool value = false;
  var data = Get.arguments;

  void favorite(){
    value =! value;
    update(['like']);
  }

  List image = [
    'https://freepngimg.com/thumb/apple/88-png-apple-image-clipart-transparent-png-apple-thumb.png',
    'https://5.imimg.com/data5/SELLER/Default/2022/11/HF/AI/MQ/162935399/green-apple-500x500.jpg',
    'https://freepngimg.com/thumb/orange/4-orange-png-image-download-thumb.png',
    'https://freepngimg.com/thumb/pineapple/2-pineapple-png-image-download-thumb.png',
    'https://freepngimg.com/thumb/strawberry/14-2-strawberry-png-images-thumb.png',
    'https://freepngimg.com/thumb/papaya/176229-papaya-green-free-transparent-image-hd-thumb.png',
    ];

  String selectedimage =
      'https://freepngimg.com/thumb/apple/88-png-apple-image-clipart-transparent-png-apple-thumb.png';
  String selectedprice = "45.00";

  void add() {
    counter++;
    update(['add']);
  }

  void remove() {
    counter != 0 ? counter-- : counter;
    update(['add']);
  }
}
