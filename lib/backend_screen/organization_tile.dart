import 'package:flutter/material.dart';
import 'package:noticeit/backend_screen/sub_organizations.dart';

class OrganizationTile extends StatefulWidget {
  //OrganizationTile({Key? key}) : super(key: key);
  OrganizationTile({required this.orgName});
  String orgName;

  @override
  State<OrganizationTile> createState() => _OrganizationTileState();
}

class _OrganizationTileState extends State<OrganizationTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
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
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SubOrganizations(orgName: widget.orgName),
            ));
      },
    );
  }
}
