import 'package:flutter/material.dart';
import 'package:thiran_ui/screens/dashboard.dart';
import 'package:thiran_ui/screens/tasks.dart';

class BottomBarScreen extends StatefulWidget {
  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  late List<Map<String, Widget?>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': const DashBoard(),
      },
      {
        'page': const Tasks(),
      },
      {
        'page': const Center(child:Text("Add Content"),)
      },
      {
        'page': const Center(child:Text("Messages Content"),)
      },
      {
        'page': Center(child:Text("Settings Content"),)
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page']!,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin:4.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: kBottomNavigationBarHeight * 0.98,
          child: BottomNavigationBar(
            onTap: _selectPage,
            backgroundColor: Theme.of(context).primaryColor,
            unselectedItemColor: Theme.of(context).textTheme.bodyLarge?.color, // Access text color via ThemeData
            selectedItemColor: Color(0xff9297fe),
            currentIndex: _selectedPageIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sticky_note_2_outlined),
                label: 'Tasks',
              ),
              BottomNavigationBarItem(
                activeIcon: null,
                icon: Icon(null),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,
                ),
                label: 'Messages',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: Color(0xff9297fe),
          hoverElevation: 10,
          splashColor: Colors.grey,
          tooltip: 'Search',
          elevation: 4,
          child: const Icon(Icons.add),
          onPressed: () => setState(() {
            _selectedPageIndex = 2;
          }),
        ),
      ),
    );
  }
}
