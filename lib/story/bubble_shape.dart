import 'package:flutter/material.dart';
import 'package:noticeit/story/story_detail_screen.dart';

class BubbleStory extends StatefulWidget {
  //const BubbleStory({Key? key}) : super(key: key);

  final String title;
  final bool isClicked;
  final String ImageStr;

  BubbleStory(this.title, this.isClicked, this.ImageStr);

  @override
  State<BubbleStory> createState() => _BubbleStoryState();
}

class _BubbleStoryState extends State<BubbleStory> {
  late bool isClicked;
  late Color color = Colors.greenAccent;

  void OpenStory() {
    setState(() {
      isClicked = true;
      color = Colors.white38;
    });
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                StoryDetailScreen(widget.title, widget.ImageStr)));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: OpenStory,
        child: Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlueAccent.withOpacity(0.5),
                  border: Border.all(
                    width: 4,
                    color: color,
                  )),
              child: null,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.title,
              style: TextStyle(
                color: Color.fromARGB(
                  255,
                  35,
                  64,
                  153,
                ),
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
