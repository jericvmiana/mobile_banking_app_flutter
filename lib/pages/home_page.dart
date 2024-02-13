import 'package:flutter/material.dart';
import 'package:mobile_banking_app_flutter/pages/statement_page.dart';
import 'package:mobile_banking_app_flutter/utils/color_utils.dart';
import 'package:mobile_banking_app_flutter/widgets/common_app_bar.dart';
import 'package:mobile_banking_app_flutter/widgets/home_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = [];

  @override
  void initState() {
    super.initState();
    _widgetOptions = [
      const HomeContent(),
      const Text('Transfer Page'),
      const Text('Profile Page'),
      const StatementPage(),
      const Text('Profile Page'),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        backgroundColor: ColorUtils.appBlack,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications_none),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sync_alt),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 30,
              backgroundColor: ColorUtils.appGreen,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorUtils.appBlack,
        onTap: _onItemTapped,
      ),
    );
  }
}
