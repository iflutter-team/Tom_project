import 'package:flutter/material.dart';
import 'package:tom_project/utils/color_res.dart';
import 'package:tom_project/utils/string_res.dart';

// Widget category() {
//   return Expanded(
//     child: GridView.builder(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         childAspectRatio: 0.7,
//         crossAxisSpacing: 10,
//       ),
//       itemCount: 6,
//       itemBuilder: (context, index) => ShowProduct(
//         discount: 10,
//         image: ImageRes.Category,
//         inStock: false,
//         productname: StringRes.TextCategory,
//       ),
//     ),
//   );
// }

Widget product1() {
  return Container(
    margin: const EdgeInsets.all(5),
    height: 150,
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: ColorsRes.addcolor,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            image: const DecorationImage(
              image: AssetImage("assets/images/strawberry.png"),
            ),
          ),
        ),
        Text(StringRes.TextCategory),
      ],
    ),
  );
}

Widget product2() {
  return Container(
    margin: const EdgeInsets.all(5),
    height: 150,
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: ColorsRes.addcolor,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            image: const DecorationImage(
              image: AssetImage("assets/images/strawberry.png"),
            ),
          ),
        ),
        Text(StringRes.TextCategory2),
      ],
    ),
  );
}

Widget product3() {
  return Container(
    margin: const EdgeInsets.all(5),
    height: 150,
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: ColorsRes.addcolor,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            image: const DecorationImage(
              image: AssetImage("assets/images/strawberry.png"),
            ),
          ),
        ),
        Text(StringRes.TextCategory3),
      ],
    ),
  );
}

Widget product4() {
  return Container(
    margin: const EdgeInsets.all(5),
    height: 150,
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: ColorsRes.addcolor,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            image: const DecorationImage(
              image: AssetImage("assets/images/strawberry.png"),
            ),
          ),
        ),
        Text(StringRes.TextCategory4),
      ],
    ),
  );
}

Widget product5() {
  return Container(
    margin: const EdgeInsets.all(5),
    height: 150,
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: ColorsRes.addcolor,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            image: const DecorationImage(
              image: AssetImage("assets/images/strawberry.png"),
            ),
          ),
        ),
        Text(StringRes.TextCategory5),
      ],
    ),
  );
}

Widget product6() {
  return Container(
    margin: const EdgeInsets.all(5),
    height: 150,
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: ColorsRes.addcolor,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            image: const DecorationImage(
              image: AssetImage("assets/images/strawberry.png"),
            ),
          ),
        ),
        Text(StringRes.TextCategory6),
      ],
    ),
  );
}
