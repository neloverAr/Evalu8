import 'package:flutter/material.dart';

class AppBarContent extends StatefulWidget {
  final String user_name;
  final bool shouldhidden;
  const AppBarContent(
      {super.key, required this.user_name, required this.shouldhidden});

  @override
  State<AppBarContent> createState() => _AppBarContentState();
}

class _AppBarContentState extends State<AppBarContent> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Color(0XffF9E4BB),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: widget.shouldhidden ? 50.0 : 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.menu, size: 30),
                          Image(
                            image:
                                AssetImage('assets/images/evaluatephotoo.png'),
                          ),
                          SizedBox(),
                        ],
                      ),
                    ),
                    widget.shouldhidden
                        ? Text('')
                        : Padding(
                            padding: const EdgeInsets.only(bottom: 0.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      ' Hi ',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xff002140),
                                      ),
                                    ),
                                    Text(
                                      '${widget.user_name} 👋',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.amber),
                                    ),
                                  ],
                                ),
                                const CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Color(0xff002140),
                                    child: Icon(
                                      Icons.person,
                                      size: 30,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
