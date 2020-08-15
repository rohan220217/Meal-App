import 'package:flutter/material.dart';
import './main_drawer.dart';
import './category_list.dart';
import './favourite_screen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

//bottom naigation bar code

class _TabScreenState extends State<TabScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': CategoriesPage(), 'title': 'Category'}, 
    {'page': Favourite(), 'title': 'Favourite'}, 
    
  ];

  int _selectedPageIndex = 0;

  void _changeTab(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        backgroundColor: Theme.of(context).accentColor,
        onTap: _changeTab,
        items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.category,
          ),
          title: Text('Category'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.star,
          ),
          title: Text('Favorite'),
        ),
      ]),
    );
  }
}

// Top navigation bar code

// class _TabScreenState extends State<TabScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Meal App'),
//           bottom: TabBar(
//             tabs: [
//               Tab(
//                   icon: Icon(
//                     Icons.category,
//                   ),
//                   text: 'Category'),
//               Tab(
//                   icon: Icon(
//                     Icons.star,
//                   ),
//                   text: 'Favourite'),
//             ],
//           ),
//         ),
//         body: TabBarView(children: [CategoriesPage(), Favourite()]),
//       ),
//     );
//   }
// }
