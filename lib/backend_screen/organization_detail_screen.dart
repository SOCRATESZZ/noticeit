// import 'dart:html';

// import 'dart:html';

// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:noticeit/Organization/organization_tile.dart';
import 'package:noticeit/admin/admin_template.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:noticeit/backend_screen/organization_tile.dart';

class OrganizationDetailScreen extends StatefulWidget {
  //const OrganizationDetailScreen({Key? key}) : super(key: key);
  OrganizationDetailScreen({required this.orgName});
  final orgName;
  @override
  State<OrganizationDetailScreen> createState() =>
      _OrganizationDetailScreenState();
}

class _OrganizationDetailScreenState extends State<OrganizationDetailScreen> {
  late String org;

  CollectionReference _collectionRef =
      FirebaseFirestore.instance.collection('organizations');

  // Future<void> getData() async {
  //   // Get docs from collection reference
  //   QuerySnapshot querySnapshot = await _collectionRef.get();

  // Get data from docs and convert map to List
  // final allData = querySnapshot.docs.map((doc) => doc.data()).toList();

  // print(allData);
  // }
  // FirebaseFirestore.instance.collection('organizations').doc('PICT').collection('CS'),

  // final Stream<QuerySnapshot> orgStream =
  //     ;

  final db = FirebaseFirestore.instance;
  // Firestore.collection("organizations/PICT").getdocuments;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: db.collection('organizations').snapshots(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          print('Something went wrong');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        // final List storedocs = [];
        // snapshot.data!.docs.map((DocumentSnapshot document) {
        //   Map a = document.data() as Map<String, dynamic>;
        //   storedocs.add(a);
        // }).toList();

        var doc = snapshot.data.docs;

        return Center(
          child: Container(
              child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                itemCount: doc.length,
                itemBuilder: (context, index) {
                  return OrganizationTile(
                      orgName: snapshot.data.docs[index].data()['orgName']);
                },
              ))
            ],
          )),
        );
      },
    );
  }
}
