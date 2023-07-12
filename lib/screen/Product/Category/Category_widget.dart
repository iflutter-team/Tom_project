import 'package:flutter/material.dart';
import 'package:tom_project/utils/color_res.dart';
import 'package:tom_project/utils/string_res.dart';

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
              image: AssetImage("assets/Products/Apple.png"),
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
              image: AssetImage("assets/Products/green apple.png"),
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
              image: AssetImage("assets/Products/Orange.png"),
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
              image: AssetImage("assets/Products/Pineapple.png"),
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
              image: AssetImage("assets/Products/Strawberry.png"),
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
              image: NetworkImage("https://images.unsplash.com/photo-1528821128474-27f963b062bf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTJ8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
            ),
          ),
        ),
        Text(StringRes.TextCategory6),
      ],
    ),
  );
}
