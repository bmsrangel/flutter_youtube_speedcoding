import 'package:flutter/material.dart';

import '../widgets/custom_bottom_navigation_bar_widget.dart';
import 'explore_page.dart';
import 'library_page.dart';
import 'start_page.dart';
import 'subscriptions_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController page$ = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: page$,
        children: [
          StartPage(),
          ExplorePage(),
          Container(color: Colors.red),
          SubscriptionsPage(),
          LibraryPage(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBarWidget(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _onItemSelected,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            activeIcon: Icon(Icons.explore),
            label: 'Explorar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_outlined),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            activeIcon: Icon(Icons.subscriptions),
            label: 'Inscrições',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            activeIcon: Icon(Icons.video_library),
            label: 'Biblioteca',
          ),
        ],
      ),
    );
  }

  void _onItemSelected(int index) {
    page$.jumpToPage(index);
    setState(() {
      _currentIndex = index;
    });
  }
}
