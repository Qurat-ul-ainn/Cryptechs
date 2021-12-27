import 'package:cryptechs/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomNavigation extends StatefulWidget {
  final Widget widget;

  const CustomNavigation({Key key, this.widget}) : super(key: key);

  @override
  _CustomNavigationState createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this.widget.widget,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: kBottomNavigationBarHeight * 1.0,
          child: BottomNavigationBar(
             fixedColor: AppColors.kBlueClr,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex, //New
            //'onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu_book,
                ),
                label: 'Courses',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.access_time_outlined,
                ),
                label: 'Time Table',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box_rounded,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
