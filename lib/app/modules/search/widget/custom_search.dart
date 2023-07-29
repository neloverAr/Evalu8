import 'package:flutter/material.dart';
class CustomSearchText extends StatelessWidget {
  const CustomSearchText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration( boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ]),
      child: TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.search,color: Colors.grey,),
            hintText: "Search here.... ",
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
          )),
    );
  }
}
