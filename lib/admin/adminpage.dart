import 'package:flutter/material.dart';
import 'package:noticeit/Organization/organization.dart';
import 'package:noticeit/Organization/organization_dummy_data.dart';
import 'package:noticeit/admin/admin_template.dart';

class AdminPage extends StatefulWidget {
  AdminPage({Key? key}) : super(key: key);

  int adminID = 1010;

  @override
  State<AdminPage> createState() => AdminPageState();
}

class AdminPageState extends State<AdminPage> {
  @override
  List Adminof = [];
  @override
  void initState() {
    super.initState();

    Adminof =
        Allorg.where((org) => (org.Admin.contains(widget.adminID))).toList();

    // widget.Adminof.forEach((element) {
    //   print(element.id);
    // });

    // print(widget.Adminof.length);
  }

  //widget.Memberof.toList();

  Widget build(BuildContext context) {
    // return Container(
    //     decoration: const BoxDecoration(
    //       gradient: LinearGradient(
    //           begin: Alignment.topLeft,
    //           end: Alignment.bottomRight,
    //           colors: [
    //             Color.fromARGB(255, 255, 181, 167),
    //             Color.fromARGB(255, 252, 213, 206),
    //             Color.fromARGB(255, 248, 237, 235),
    //             Color.fromARGB(255, 249, 220, 196),
    //             Color.fromARGB(255, 254, 200, 154),
    //           ]),
    //     ),
    return Scaffold(
      //backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text('you are admin of.......'),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            //shrinkWrap: true,
            itemCount: Adminof.length,
            itemBuilder: (context, index) => AdminTile(
                orgId: Adminof[index].id,
                orgName: Adminof[index].orgName.toString()),
          )),
        ],
      ),
    );
  }
}
