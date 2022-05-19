import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noticeit/screens/story.dart';
import 'package:noticeit/story/bubble_shape.dart';
import '../story/STORY_DUMMY_DATA.dart';
import '../scrollPages/scrollPage.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final db = FirebaseFirestore.instance;

    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent.withOpacity(0.6),
          title: Text('NoticeIt'),
        ),
        body: StreamBuilder(
          stream: db.collection('organizations').doc('PICT').snapshots(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              print('Something went wrong');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            List Notices = [];
            // snapshot.data.map((DocumentSnapshot docx) {
            //   Map a = docx.data() as Map<dynamic, dynamic>;
            //   Notices.add(a);
            // }).toList();
            // print(Notices);
            // var doc = snapshot.data.docs();

            // Notices.add(docs.)

            // snapshot.data.docs[0];

            return Column(
              children: [
                Container(
                    height: 110,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: storyDummy
                          .map((bubble) => BubbleStory(
                              bubble.title, bubble.isClicked, bubble.ImageStr))
                          .toList(),
                    )),
                Divider(
                  height: 13,
                ),
                // SizedBox(
                //   height: 6,
                // ),
                // Expanded(
                //   child: ListView.builder(itemCount: storyDummy.length,itemBuilder:(context, index) {
                //     return ScrollPage(title: storyDummy[index].title, ImageStr: storyDummy[index].ImageStr, id: storyDummy[index].id);
                //   },),
                // )

                // ScrollPage(title: "PICt", ImageStr: "XYZ", id: 1),
//static db
                Expanded(
                  child: ListView.builder(
                    itemCount: storyDummy.length,
                    itemBuilder: (context, index) => ScrollPage(
                        title: storyDummy[index].title,
                        ImageStr: storyDummy[index].ImageStr,
                        id: storyDummy[index].id),
                  ),
                )

                // Expanded(child:
                // ListView.builder(itemBuilder: ))
              ],
            );
          },
        ));
  }
}
