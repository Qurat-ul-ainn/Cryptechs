import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _onItemTappped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: kBottomNavigationBarHeight * 1.2,

        child: BottomNavigationBar(
          backgroundColor: Colors.grey[100],


          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: showIndicator(_selectedIndex == 0)),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm),
                title: showIndicator(_selectedIndex == 1)),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: showIndicator(_selectedIndex == 2)),
          ],
          onTap: _onItemTappped,
          currentIndex: _selectedIndex,
        ),
      ),
    );
  }


Widget showIndicator(bool show) {
  return show
      ? Padding(
    padding: const EdgeInsets.only(top: 4),
    child:ClipPath(
      clipper: new CustomHalfCircleClipper(),
      child: new Container(
        height: 20.0,
      width: 20.0,
      //  height: MediaQuery.of(context).size.width,
      //  width: MediaQuery.of(context).size.width,
        decoration: new BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(
              MediaQuery.of(context).size.width / 2),
        ),
      ),
    )
    // Container(
    //   height: 200.0,
    //   decoration: new BoxDecoration(
    //     color: Colors.red,
    //     borderRadius: BorderRadius.vertical(
    //         bottom: Radius.elliptical(
    //
    //             MediaQuery.of(context).size.width, 100.0
    //         )
    //     ),
    //   ),
    // ),//Icon(Icons.brightness_1, size: 10, color: AppColors.kBlueClr),
  )
      : SizedBox();
}


}

class CustomHalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = new Path();
    path.lineTo(0.0, size.height / 2);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}