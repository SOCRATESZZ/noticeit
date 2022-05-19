import 'package:flutter/material.dart';
import 'package:noticeit/admin/admin_template.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:noticeit/backend_screen/organization_detail_screen.dart';

class SubOrganizations extends StatefulWidget {
  //SubOrganizations({Key? key}) : super(key: key);
  SubOrganizations({required this.orgName});
  String orgName;

  @override
  State<SubOrganizations> createState() => _SubOrganizationsState();
}

class _SubOrganizationsState extends State<SubOrganizations> {
  final db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: db
              .collection('organizations')
              .doc('PICT')
              .collection("sub_org")
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
            var doc = snapshot.data.docs;
            return Column(
              children: [
                Expanded(
                    child: ListView.builder(
                        itemCount: doc.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: Container(
                              // height: 24,
                              child: Card(
                                child: Text(
                                  snapshot.data.docs[index].data()['orgName'],
                                  style: TextStyle(fontSize: 28),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: ((context) {
                                return OrganizationDetailScreen(
                                    orgName: "PICT");
                              })));
                            },
                          );
                        }))
              ],
            );
          }),
    );
  }
}
