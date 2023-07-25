import 'package:flutter/material.dart';
import 'package:tom_project/common/appbar_common.dart';
import 'package:tom_project/screen/Product/Category/Category_screen.dart';
import 'package:tom_project/screen/Product/product/Product_screen_widget.dart';
import 'package:tom_project/screen/home/Home_screen_widget.dart';
import 'package:tom_project/utils/string_res.dart';

import '../Products1/Products_screen.dart';

class productscreen extends StatelessWidget {
  productscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          productTextfiled(),
           Expanded(
            child: Products(),
          ),
        ],
      ),
      drawer: drawer(),
    );
    // return DefaultTabController(
    //   initialIndex: 0,
    //   length: 2,
    //   child: Scaffold(
    //     appBar: appBar,
    //     body: Column(
    //       children: [
    //         productTextfiled(),
    //         TabBar(padding: EdgeInsets.only(right: 150), tabs: [
    //           Text(
    //             StringRes.Textproducts,
    //             style: TextStyle(color: Colors.green, fontSize: 17),
    //           ),
    //           Text(
    //             StringRes.Textcategory,
    //             style: TextStyle(color: Colors.green, fontSize: 17),
    //           )
    //         ]),
    //         const Expanded(
    //           child: TabBarView(
    //               clipBehavior: Clip.antiAlias,
    //               children: [Products(), Category1()]),
    //         ),
    //       ],
    //     ),
    //     drawer: drawer(),
    //   ),
    // );
  }
}
