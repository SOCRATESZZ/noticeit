import 'package:flutter/material.dart';
import 'package:noticeit/Organization/organization_dummy_data.dart';
import 'package:noticeit/Organization/organization_model.dart';
import 'package:noticeit/Organization/upload_page.dart';
import 'package:noticeit/scrollPages/scrollPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class OrganizationDetailScreen extends StatefulWidget {
  //OrganizationDetailScreen({Key? key}) : super(key: key);

  String orgName;
  int orgId;
  late List orgNotices = [];

  OrganizationDetailScreen(@required this.orgName, @required this.orgId);

  @override
  State<OrganizationDetailScreen> createState() =>
      _OrganizationDetailScreenState();
}

class _OrganizationDetailScreenState extends State<OrganizationDetailScreen> {
  @override
  late OrganizationModel currentOrg;
  void initState() {
    super.initState();
    currentOrg = Allorg.firstWhere((org) => (org.id == widget.orgId));
    widget.orgNotices = currentOrg.Notices;
  }

  final myController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    myController.dispose();
    super.dispose();
  }

  void getText() {
    String text = myController.text;
    print(text);
    setState(() {
      Page();
    });
  }

  Widget Page() => Scaffold(
      resizeToAvoidBottomInset: true,
      // appBar:
      body: Stack(
        alignment: Alignment.bottomCenter,
        fit: StackFit.loose,
        children: [
          Column(children: [
            // Scroll(),
          ]),
          Container(
            margin: EdgeInsets.only(
              left: 6,
              right: 6,
              bottom: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.redAccent,
            ),
            //margin: EdgeInsets.all(6),
            child: TextField(
              controller: myController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(Icons.send_rounded),
                  onPressed: getText,
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: 'type here',
              ),
              onTap: () {
                // setState(() {
                //   Scroll();
                // });
              },
            ),
          ),
        ],
      ));

  // Widget Scroll() => Expanded(
  //       child: ListView.builder(
  //         itemCount: widget.orgNotices.length,
  //         itemBuilder: (context, index) => ScrollPage(
  //             title: widget.currentOrg.orgName,
  //             ImageStr: widget.orgNotices[index],
  //             id: widget.currentOrg.id),
  //       ),
  //     );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double height = 0;

    final db = FirebaseFirestore.instance;

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.orgName),
        ),
        body: StreamBuilder(
          stream: db
              .collection('organizations')
              .doc('PICT')
              .collection('Notices')
              .snapshots(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              print('Something went wrong');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: snapshot.data.docs.length,
                    itemBuilder: (context, index) => ScrollPage(
                        title: currentOrg.orgName,
                        ImageStr: snapshot.data.docs[index].data()['notice'],
                        id: currentOrg.id),
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.add_rounded,
                      size: 32,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UploadPage(
                                    orgId: widget.orgId,
                                    orgName: widget.orgName,
                                  )));
                    })
              ],
            );
          },
        ));

    // return Page();
    // return Scaffold(
    //     resizeToAvoidBottomInset: true,
    //     appBar: AppBar(
    //       title: Text(widget.orgName),
    //     ),
    //     body: Stack(
    //       alignment: Alignment.bottomCenter,
    //       fit: StackFit.loose,
    //       children: [
    //         Column(children: [
    //           Scroll(),
    //         ]),
    //         Container(
    //           margin: EdgeInsets.only(
    //             left: 6,
    //             right: 6,
    //             bottom: 10,
    //           ),
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(20),
    //             color: Colors.redAccent,
    //           ),
    //           //margin: EdgeInsets.all(6),
    //           child: TextField(
    //             controller: myController,
    //             decoration: InputDecoration(
    //               suffixIcon: IconButton(
    //                 icon: Icon(Icons.send_rounded),
    //                 onPressed: getText,
    //               ),
    //               border: OutlineInputBorder(
    //                   borderRadius: BorderRadius.circular(20)),
    //               hintText: 'type here',
    //             ),
    //             onTap: () {},
    //           ),
    //         ),
    //       ],
    //     ));
  }
}
