import 'package:cryptechs/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cryptechs/constants/ui_views/ui_components.dart';

class ExchangesScreen extends StatefulWidget {
  const ExchangesScreen({Key key}) : super(key: key);

  @override
  _ExchangesScreenState createState() => _ExchangesScreenState();
}

class _ExchangesScreenState extends State<ExchangesScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      alignment: Alignment.topLeft,
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30.0,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: MainTxt(
                        txt: "Exchanges",
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25.0),
                height: 250,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  image: DecorationImage(
                    image: AssetImage('assets/icons/binance.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25.0),
                height: 250,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  image: DecorationImage(
                    image: AssetImage('assets/icons/kucoin.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        child: Container(

          height: kBottomNavigationBarHeight * 1.2,
          child: BottomNavigationBar(

            backgroundColor: Colors.grey[100],
            fixedColor: AppColors.kBlueClr,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
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

// //ListViewComponent for create sale bill B screen
// class ExchangesView extends StatelessWidget {
//   final Image image;
//
//   const ExchangesView({Key key, this.image}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//
//       margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
//       height: 200,
//       width: MediaQuery.of(context).size.width*1,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(20)),
//           image: DecorationImage(
//           image: AssetImage('assets/icons/binance.png'),
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }
