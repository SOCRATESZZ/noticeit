import 'package:flutter/material.dart';
import 'package:noticeit/Organization/organization.dart';
import 'package:noticeit/Organization/organization_detail_screen.dart';
import 'package:noticeit/admin/adminpage.dart';
import 'package:noticeit/screens/homePage.dart';
// import 'package:noticeit/backend_screen/organization_detail_screen.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //const Home({Key? key}) : super(key: key);
  int _currentpage = 0;

  PageController _controller = PageController(initialPage: 0);

  void _changeScreen(int index) {
    setState(() {
      _currentpage = index;
    });
  }

  final List _childern = [
    HomePage(),
    Organization(),
    // OrganizationDetailScreen(orgName, orgId)
    AdminPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          HomePage(),
          Organization(),
          // OrganizationDetailScreen(orgName: 'PICT')
          AdminPage()
        ],
        onPageChanged: (newindex) {
          setState(() {
            _currentpage = newindex;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentpage,
          onTap: (index) {
            _controller.animateToPage(index,
                duration: Duration(milliseconds: 500), curve: Curves.easeIn);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Notices'),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book), label: 'Organization'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'admin')
          ]),
    );
  }
}
