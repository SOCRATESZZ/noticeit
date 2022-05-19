import 'package:flutter/material.dart';
import 'package:noticeit/Organization/organization_tile.dart';
import 'organization_dummy_data.dart';

class Organization extends StatefulWidget {
  Organization({Key? key}) : super(key: key);

  @override
  State<Organization> createState() => _OrganizationState();
}

class _OrganizationState extends State<Organization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Organizations you follow',
          style: TextStyle(
            color: Color.fromARGB(
              255,
              35,
              64,
              153,
            ),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: OrganizationDummyData.map(
                  (org) => OrganizationTile(org.id, org.orgName, org.SubOrg))
              .toList(),
        ),
      ),
    );
  }
}
