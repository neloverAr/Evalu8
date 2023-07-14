import 'package:flutter/material.dart';

import '../../core/values/colors.dart';

class NewProduct extends StatefulWidget {
  const NewProduct({super.key});

  @override
  State<NewProduct> createState() => _NewProductState();
}

class _NewProductState extends State<NewProduct> {
  bool addPro = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image(
                    image: AssetImage('assets/images/iphone.png'),
                    // width: 90,
                    height: 100,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      addPro = true;
                    });
                  },
                  child: addPro
                      ? Icon(
                          Icons.check_circle_outline,
                          size: 20,
                          color: yellow,
                        )
                      : Icon(
                          Icons.add_circle_outline_rounded,
                          size: 20,
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90.0),
                  child: Container(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: yellow,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: blue,
                          size: 8, //16
                        ),
                        Text(
                          '  4.5 ',
                          style: TextStyle(
                              fontSize: 10,
                              color: blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
        SizedBox(
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Iphone 14 pro',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Devices',
              style: TextStyle(fontSize: 10),
            ),
          ],
        )
      ],
    );
  }
}
