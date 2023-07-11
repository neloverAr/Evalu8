import 'package:evalu8/app/modules/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:simple_item_selector/simple_item_selector.dart';

import '../core/values/colors.dart';
import 'widgets/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final _controller = SidebarXController(selectedIndex: 0, extended: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 8,
                    color: Colors.black12,
                  ),
                ]),
                child: Image.asset(
                  'assets/images/classofmmm.png',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: yellow),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.message_rounded,
                                size: 20,
                              ),
                              SizedBox(
                                height: 20.0,
                              )
                            ],
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'Evaluate Products \naccording to your \nown experience',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: blue,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.swipe_up_outlined,
                                size: 25,
                                color: yellow,
                              ),
                              SizedBox(
                                height: 20.0,
                              )
                            ],
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'Browse top produ- \ncts according to our\nalgorithm',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'Explore by Category',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ItemSelector(
                      // direction: Direction.horizontal,
                      activeBackgroundColor: Colors.amberAccent,
                      inactiveBackgroundColor: blue,

                      itemMargin: const EdgeInsets.all(8),
                      itemBorderRadius:
                          const BorderRadius.all(Radius.circular(50)),
                      itemsCount: 12, // should be <= items.length
                      items: const [
                        Icon(
                          Icons.car_repair,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.device_hub,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.mobile_friendly,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.car_crash,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.car_crash,
                          color: Colors.white,
                        ),
                        Icon(Icons.settings, color: Colors.white),
                        Icon(Icons.settings, color: Colors.white),
                        Icon(Icons.settings, color: Colors.white),
                      ], // any arbitrary widget list
                      onSelected: (index) {
                        // you can access selected item index here!
                        // print(index);
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: [
                  Text(
                    'Recent Actitvity',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            Product_card(),
          ],
        ),
      ),
    );
  }
}
