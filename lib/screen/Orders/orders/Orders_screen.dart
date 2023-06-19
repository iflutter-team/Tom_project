import 'package:flutter/material.dart';
import 'package:tom_project/screen/Orders/CancledScreen/cancel_screen.dart';
import 'package:tom_project/screen/Orders/CurrentOrders/current_screen.dart';
import 'package:tom_project/screen/Orders/DeliverdScreen/deliverd_screen.dart';
import 'package:tom_project/screen/Orders/Dispatchedorder/dispached_screen.dart';
import 'package:tom_project/utils/string_res.dart';

class Orderscreen extends StatelessWidget {
  const Orderscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.green,
            ),
          ),
          centerTitle: true,
          title: Text(
            StringRes.title,
            style: const TextStyle(fontSize: 20, color: Colors.green),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.green,
              ),
            )
          ],
          bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 20),
            child: Column(
              children: [
                const Divider(
                  color: Colors.green,
                  thickness: 1,
                ),
                TabBar(
                    isScrollable: true,
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.green,
                    labelStyle: const TextStyle(fontSize: 17),
                    unselectedLabelStyle: const TextStyle(fontSize: 15),
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      Text(StringRes.tabbar1),
                      Text(StringRes.tabbar2),
                      Text(StringRes.tabbar3),
                      Text(StringRes.tabbar4),
                    ])
              ],
            ),
          ),
        ),
        body: const TabBarView(children: [
          currentscreen(),
          dispachedscreen(),
          deliverdscreen(),
          cancelscrren(),
        ]),
      ),
    );
  }
}
