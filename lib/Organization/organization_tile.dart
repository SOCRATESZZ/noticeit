import 'package:flutter/material.dart';
import 'package:noticeit/Organization/organization_detail_screen.dart';
import 'package:noticeit/Organization/organization_dummy_data.dart';
import 'organization_model.dart';

class OrganizationTile extends StatefulWidget {
  //OganizationTile({Key? key}) : super(key: key);

  int id;
  List SubOrg = [];
  String orgName;

  OrganizationTile(
      @required this.id, @required this.orgName, @required this.SubOrg);

  @override
  State<OrganizationTile> createState() => _OrganizationTileState();
}

class _OrganizationTileState extends State<OrganizationTile> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: Colors.lightBlueAccent.withOpacity(0.9),
            shape: BoxShape.circle),
      ),
      title: TextButton(
        child: Text(widget.orgName),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      OrganizationDetailScreen(widget.orgName, widget.id)));
        },
      ),
      children: widget.SubOrg.map((sub) {
        return OrganizationTile(sub.id, sub.orgName, sub.SubOrg);
      }).toList(),
    );
  }
}
