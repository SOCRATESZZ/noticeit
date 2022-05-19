import 'package:flutter/material.dart';
import 'package:noticeit/Organization/organization_detail_screen.dart';

class AdminTile extends StatefulWidget {
  //AdminTile({Key? key}) : super(key: key);

  final String orgName;
  final int orgId;

  AdminTile({required this.orgId, required this.orgName});

  @override
  State<AdminTile> createState() => _AdminTileState();
}

class _AdminTileState extends State<AdminTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  OrganizationDetailScreen(widget.orgName, widget.orgId))),
      child: Card(
        elevation: 3,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Container(
          height: 100,
          padding: EdgeInsets.all(10),
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(maxRadius: 30),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    widget.orgName,
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
