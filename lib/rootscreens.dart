import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart_users/providers/cart_provider.dart';
import 'package:shop_smart_users/screens/home/homescreen.dart';
import 'package:shop_smart_users/screens/person/personscreen.dart';
import 'package:shop_smart_users/screens/searchscreen.dart';
import 'package:shop_smart_users/screens/cart/cart_screen.dart';

class RootScreens extends StatefulWidget {
  const RootScreens({super.key});
  static const namescreen = '/rootscreens.dart';
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
      const SearchScreenPage(),
      const CartSceen(),
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
    final cartprovider = Provider.of<CartProvider>(context);
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
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeInOut,
          );
        },

        items: [
          const BottomNavigationBarItem(
            // backgroundColor: Color.fromARGB(31, 148, 51, 51),
            icon: Icon(
              Icons.home,
              //  color: Colors.amber,
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Badge(
              label: Text(
                cartprovider.getcartproducts.length.toString(),
              ),
              child: const Icon(Icons.shopping_cart_outlined),
            ),
            label: 'Cart',
          ),
          
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          ),
        ],
      ),
    );
  }
}
