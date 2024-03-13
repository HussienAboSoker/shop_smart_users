import 'package:flutter/material.dart';
import 'package:shop_smart_users/screens/home/homescreen.dart';
import 'package:shop_smart_users/screens/personscreen.dart';
import 'package:shop_smart_users/screens/searchscreen.dart';
import 'package:shop_smart_users/screens/cart/cart_screen.dart';

class RootScreens extends StatefulWidget {
  const RootScreens({super.key});
  static const namescreen='/rootscreens.dart';
  @override
  // ignore: library_private_types_in_public_api
  _RootScreensState createState() => _RootScreensState();
}

class _RootScreensState extends State<RootScreens> {
  late PageController _pageController;
  int _currentIndex = 0;
  late List<Widget> screens;

  @override
  void initState() {
    super.initState();
    screens = [
      const HomeScreenPage(),
      const CartSceen(),
      const SearchScreenPage(),
      const PersonScreenPage(),
    ];
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        // elevation: 16,

        currentIndex: _currentIndex,
        onTap: (index) {
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        items: const [
          BottomNavigationBarItem(
            // backgroundColor: Color.fromARGB(31, 148, 51, 51),
            icon: Icon(
              Icons.home,
              //  color: Colors.amber,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Badge(label: Text("9"), child: Icon(Icons.card_travel_sharp)),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          ),
        ],
      ),
    );
  }
}
