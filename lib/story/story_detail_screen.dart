import 'package:flutter/material.dart';

class StoryDetailScreen extends StatefulWidget {
  //StoryDetailScreen({Key? key}) : super(key: key);

  late String title;
  late String ImageStr;

  StoryDetailScreen(@required this.title, @required this.ImageStr);

  static const routeName = '/story-detail';

  @override
  State<StoryDetailScreen> createState() => _StoryDetailScreenState();
}

class _StoryDetailScreenState extends State<StoryDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12, top: 12),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Color.fromARGB(
              255,
              35,
              64,
              153,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        elevation: 0,
        title: Row(
          children: [
            // SizedBox(
            //   width: 10,
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: TextButton(
                  onPressed: null,
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(
                        255,
                        35,
                        64,
                        153,
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
      body: Container(
          width: double.infinity,
          height: 400,
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Text(widget.ImageStr),
                ),
              )
            ],
          )),
    );
  }
}
