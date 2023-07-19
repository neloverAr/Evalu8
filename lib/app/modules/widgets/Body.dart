import 'package:evalu8/app/modules/widgets/product_card.dart';
import 'package:flutter/material.dart';

import '../../core/values/colors.dart';
import 'Item_List.dart';
import 'New_products.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 130, bottom: 10.0),
          child: Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 20,
                spreadRadius: 8,
                color: Colors.black12,
              ),
            ]),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Image.asset(
                'assets/images/classofmmm.png',
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0, left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), color: yellow),
                  child:  Row(
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
              const SizedBox(width: 8.0),
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
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Explore by Category',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8, right: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ItemList(
                  activeBackgroundColor: Colors.amberAccent,
                  inactiveBackgroundColor: blue,

                  itemMargin: const EdgeInsets.all(8),
                  itemBorderRadius: const BorderRadius.all(Radius.circular(50)),
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
                  ],
                  onSelected: (index) {},
                ),
              ],
            ),
          ),
        ),
         Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Recent Actitvity',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Product_card(),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'New',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ItemList(
              activeBackgroundColor: Colors.transparent,
              inactiveBackgroundColor: Colors.transparent,
              itemPadding: EdgeInsets.all(0.0),
              itemMargin: EdgeInsets.only(right: 8.0),
              items: [
                NewProduct(),
                NewProduct(),
                NewProduct(),
                NewProduct(),
                NewProduct(),
                NewProduct(),
              ],
              itemsCount: 6,
              onSelected: (int? index) {},
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Top Rated',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ItemList(
              activeBackgroundColor: Colors.transparent,
              inactiveBackgroundColor: Colors.transparent,
              itemPadding: EdgeInsets.all(0.0),
              itemMargin: EdgeInsets.only(right: 8.0),
              items: [
                NewProduct(),
                NewProduct(),
                NewProduct(),
                NewProduct(),
                NewProduct(),
                NewProduct(),
              ],
              itemsCount: 6,
              onSelected: (int? index) {},
            ),
          ),
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
