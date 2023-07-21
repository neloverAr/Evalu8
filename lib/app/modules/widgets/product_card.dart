import 'dart:ffi';
import 'package:evalu8/app/core/values/colors.dart';
import 'package:evalu8/app/modules/widgets/stars.dart';
import 'package:flutter/material.dart';

class Product_card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: SizedBox(
        height: 220.0,
        child: PageView.builder(
          // store this controller in a State to save the carousel scroll position
          controller: PageController(viewportFraction: 0.88),
          itemBuilder: (BuildContext context, int itemIndex) {
            return _buildCarouselItem(context, itemIndex);
          },
        ),
      ),
    );
  }

  Widget _buildCarouselItem(BuildContext context, int itemIndex) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          // Colors.grey[200],
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.add_circle_outline_rounded),
                      ],
                    ),
                    const Image(
                      image: AssetImage('assets/images/iphone.png'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: secondaryColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.star,
                                color: primaryColor,
                                size: 8,//16
                              ),
                              Text(
                                '  4.5 ',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Iphone 13',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: primaryColor),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          'New style and colors',
                          style: TextStyle(
                            fontSize: 8,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          child: Icon(
                            Icons.person,
                            size: 25,
                          ),
                          backgroundColor: Colors.grey[350],
                          foregroundColor: Colors.black,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          children: [
                            Text(
                              'Reema',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: primaryColor
                              ),
                            ),
                            Text(
                              '1 hour ago',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Rating_result(),
                    ]),
                    const Expanded(
                      child: Card(
                        elevation: 0,
                        color: Color(0XffF9E4BB),
                        child: Text(
                            style:
                                TextStyle(color: Colors.grey, fontSize: 10.0),
                            maxLines: 8,
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"),
                      ),
                    ),
                    //
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
