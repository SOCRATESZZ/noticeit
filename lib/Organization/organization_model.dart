import 'package:flutter/widgets.dart';

class OrganizationModel {
  final String orgName;
  int id;

  int createrID;

  List Admin = [];

  List Notices = [];

  List SubOrg = [];

  List member = [];

  // OrganizationModel(
  //     @required this.orgName,
  //     @required this.createrID,
  //     @required this.id,
  //     @required this.Admin,
  //     @required this.Notices,
  //     @required this.member,
  //     @required this.SubOrg);

  OrganizationModel(
      {required this.orgName,
      required this.createrID,
      required this.id,
      required this.Admin,
      required this.Notices,
      required this.member,
      required this.SubOrg});

  void putData(notice) {
    Notices.insert(0, notice);
  }
}
