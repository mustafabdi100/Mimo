import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'homepage.dart';
import 'statements_page.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => StatementsPage()),
        );
        break;
      case 2:
        // Add navigation to Scan page
        break;
      case 3:
        // Add navigation to Profile page
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    const Color customColor = Color(0xFF4DBFA3);

    return BottomNavigationBar(
      backgroundColor: Color(0xFF4B645F),
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: customColor,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/home.svg',
            color: _selectedIndex == 0 ? Colors.white : customColor,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/statements.svg',
            color: _selectedIndex == 1 ? Colors.white : customColor,
          ),
          label: 'Statements',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/scan.svg',
            color: _selectedIndex == 2 ? Colors.white : customColor,
          ),
          label: 'Scan',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/profile.svg',
            color: _selectedIndex == 3 ? Colors.white : customColor,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
