import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UploadPage extends StatelessWidget {
  //const UploadPage({Key? key}) : super(key: key);
  String orgName;
  int orgId;
  UploadPage({required this.orgId, required this.orgName});
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    late String txt;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent.withOpacity(0.6),
        title: Text(orgName),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  fontSize: 24,
                ),
                hintText: "Add your notice!!",
                labelText: "notice",
                alignLabelWithHint: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ButtonTheme(
            height: 40,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlueAccent.withOpacity(0.6),
                ),
                onPressed: () {
                  final txt = controller.text;
                  addNotice(notice: txt, orgName: orgName, orgId: orgId);
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Upload notice',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          // IconButton(
          //   icon: Icon(Icons.add, size: 48),
          //   onPressed: () {
          //     final txt = controller.text;
          //     addNotice(notice: txt, orgName: orgName, orgId: orgId);
          //     Navigator.pop(context);
          //   },
          // )
        ],
      ),
    );
  }
}

Future addNotice(
    {required String notice,
    required String orgName,
    required int orgId}) async {
  final db = FirebaseFirestore.instance;
  final Here =
      db.collection('organizations').doc('PICT').collection('Notices').doc();

  final json = {
    'organization': orgName,
    'id': orgId,
    'notice': notice,
  };

  await Here.set(json);
}
