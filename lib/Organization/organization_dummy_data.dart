import 'organization_model.dart';

// final storyDummy = [
//   Story(id: 1, title: 'PICT', ImageStr: 'xyz', isClicked: false),
//   Story(id: 2, title: 'CS', ImageStr: 'xyz', isClicked: false),
//   Story(id: 3, title: 'IT', ImageStr: 'xyz', isClicked: false),
//   Story(id: 4, title: 'ENTC', ImageStr: 'xyz', isClicked: false),
//   Story(id: 5, title: 'PACM', ImageStr: 'xyz', isClicked: false),
//   Story(id: 6, title: 'IEEE', ImageStr: 'xyz', isClicked: false),

// ];

// OrganizationModel(
//       {required this.orgName,
//       required this.createrID, 
//       required this.id,
//       required this.Admin,
//       required this.Notices,
//       required this.member,
//       required this.SubOrg});

OrganizationModel PASC = OrganizationModel(
    orgName: 'PASC',
    createrID: 1111,
    id: 1005,
    Admin: [1010, 2121],
    Notices: ['PASC_img1', 'PASC_img2', 'PASC_img2'],
    member: [1000, 1010, 2121, 2332, 2333],
    SubOrg: []);

OrganizationModel IEEE = OrganizationModel(
    orgName: 'IEEE',
    createrID: 1111,
    id: 1004,
    Admin: [1010, 2121],
    Notices: ['IEEE_img1', 'IEEE_img2', 'IEE_img2'],
    member: [1000, 1010, 2121, 2332, 2333],
    SubOrg: []);

OrganizationModel ENTC = OrganizationModel(
    orgName: 'ENTC',
    createrID: 1111,
    id: 1003,
    Admin: [1010, 2121],
    Notices: ['ENTC_img1', 'ENTC_img2', 'ENTC_img2'],
    member: [1000, 1010, 2121, 2332, 2333],
    SubOrg: [SE5, SE6, SE7, SE8]);

OrganizationModel IT = OrganizationModel(
    orgName: 'IT',
    createrID: 1111,
    id: 1002,
    Admin: [1010, 2121],
    Notices: ['IT_img1', 'IT_img2', 'IT_img2'],
    member: [1000, 1010, 2121, 2332, 2333],
    SubOrg: [SE9, SE10, SE11]);

OrganizationModel SE1 = OrganizationModel(
    orgName: 'SE1',
    createrID: 1111,
    id: 10011,
    Admin: [1010, 2121],
    Notices: ['CS_img1', 'CS_img2', 'CS_img2'],
    member: [1000, 1010, 2121, 2332, 2333],
    SubOrg: []);

OrganizationModel SE2 = OrganizationModel(
    orgName: 'SE2',
    createrID: 1111,
    id: 10012,
    Admin: [1010, 2121],
    Notices: ['CS_img1', 'CS_img2', 'CS_img2'],
    member: [1000, 1010, 2121, 2332, 2333],
    SubOrg: []);

OrganizationModel SE3 = OrganizationModel(
    orgName: 'SE3',
    createrID: 1111,
    id: 10013,
    Admin: [1010, 2121],
    Notices: ['CS_img1', 'CS_img2', 'CS_img2'],
    member: [1000, 1010, 2121, 2332, 2333],
    SubOrg: []);

OrganizationModel SE4 = OrganizationModel(
    orgName: 'SE4',
    createrID: 1111,
    id: 10014,
    Admin: [1010, 2121],
    Notices: ['CS_img1', 'CS_img2', 'CS_img2'],
    member: [1000, 1010, 2121, 2332, 2333],
    SubOrg: []);

OrganizationModel SE5 = OrganizationModel(
    orgName: 'SE5',
    createrID: 1111,
    id: 10035,
    Admin: [1010, 2121],
    Notices: ['CS_img1', 'CS_img2', 'CS_img2'],
    member: [1000, 1010, 2121, 2332, 2333],
    SubOrg: []);

OrganizationModel SE6 = OrganizationModel(
    orgName: 'SE6',
    createrID: 1111,
    id: 10036,
    Admin: [1010, 2121],
    Notices: ['CS_img1', 'CS_img2', 'CS_img2'],
    member: [1000, 1010, 2121, 2332, 2333],
    SubOrg: []);

OrganizationModel SE7 = OrganizationModel(
    orgName: 'SE7',
    createrID: 1111,
    id: 10037,
    Admin: [1010, 2121],
    Notices: ['CS_img1', 'CS_img2', 'CS_img2'],
    member: [1000, 1010, 2121, 2332, 2333],
    SubOrg: []);

OrganizationModel SE8 = OrganizationModel(
    orgName: 'SE8',
    createrID: 1111,
    id: 10038,
    Admin: [1010, 2121],
    Notices: ['CS_img1', 'CS_img2', 'CS_img2'],
    member: [1000, 1010, 2121, 2332, 2333],
    SubOrg: []);

OrganizationModel SE9 = OrganizationModel(
    orgName: 'SE9',
    createrID: 1111,
    id: 10029,
    Admin: [1010, 2121],
    Notices: ['CS_img1', 'CS_img2', 'CS_img2'],
    member: [1000, 1010, 2121, 2332, 2333],
    SubOrg: []);

OrganizationModel SE10 = OrganizationModel(
    orgName: 'SE10',
    createrID: 1111,
    id: 100210,
    Admin: [1010, 2121],
    Notices: ['CS_img1', 'CS_img2', 'CS_img2'],
    member: [1000, 1010, 2121, 2332, 2333],
    SubOrg: []);

OrganizationModel SE11 = OrganizationModel(
    orgName: 'SE11',
    id: 10029,
    createrID: 1111,
    Admin: [1010, 2121],
    Notices: ['CS_img1', 'CS_img2', 'CS_img2'],
    member: [1000, 1010, 2121, 2332, 2333],
    SubOrg: []);

OrganizationModel CS = OrganizationModel(
    orgName: 'CS',
    createrID: 1111,
    id: 1001,
    Admin: [1010, 2121],
    Notices: ['CS_img1', 'CS_img2', 'CS_img2'],
    member: [1000, 1010, 2121, 2332, 2333],
    SubOrg: [SE1, SE2, SE3, SE4]);

OrganizationModel Pict = OrganizationModel(
    orgName: 'PICT',
    createrID: 1111,
    id: 1,
    Admin: [1010, 2121],
    Notices: ['img1', 'img2', 'img2'],
    member: [1000, 1010, 2121, 2332, 2333],
    SubOrg: [CS, IT, ENTC, PASC, IEEE]);

List Allorg = [Pict, CS, IT, ENTC, IEEE, PASC];

List OrganizationDummyData = [Pict, CS];
