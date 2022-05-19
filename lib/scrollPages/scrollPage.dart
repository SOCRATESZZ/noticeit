import 'package:flutter/material.dart';

class ScrollPage extends StatefulWidget {
  //const ScrollPage({Key? key}) : super(key: key);

  final int id;
  final String title;
  final String ImageStr;
  //final bool isClicked;

  ScrollPage({
    required this.title,
    required this.ImageStr,
    required this.id,
  });

  @override
  State<ScrollPage> createState() => _ScrollPageState();
}

class _ScrollPageState extends State<ScrollPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 227, 202, 165).withOpacity(0.4),
          borderRadius: BorderRadius.all(Radius.circular(13))),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 14, bottom: 12),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.lightBlueAccent.withOpacity(0.9),
                        shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    widget.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            IconButton(
                onPressed: null,
                iconSize: 35,
                padding: EdgeInsets.only(right: 16),
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ))
          ],
        ),
        Container(
          height: 410,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 7),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 84, 186, 185).withOpacity(0.9),
              borderRadius: BorderRadius.all(Radius.circular(13))),
          child: Center(
            child: Text(
              widget.ImageStr,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                iconSize: 35,
                padding: EdgeInsets.only(top: 13, bottom: 10, right: 16),
                onPressed: null,
                icon: Icon(
                  Icons.alarm_add_sharp,
                  color: Colors.lightBlueAccent.withOpacity(0.9),
                ))
          ],
        )
      ]),
    );
  }
}
