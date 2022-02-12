import 'package:cryptechs/constants/validations/app_colors.dart';
import 'package:cryptechs/constants/ui_views/ui_components.dart';
import 'package:cryptechs/constants/validations/glooble_key.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      key: VariableKeys.key,
      drawer: Drawer(
        child: ListView(
          // Remove padding
          // padding: EdgeInsets.zero,
          padding: EdgeInsets.only(left: 15.0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Salman johr',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "example@gmail.com",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0, color: AppColors.kGreyClr),
              ),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assets/icons/man.jpg',
                    fit: BoxFit.cover,
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            SideTittle(
              tittle: "My Wallet",
              onTap: () => null,
            ),
            SideTittle(
              tittle: "Portfolio",
              onTap: () => null,
            ),
            SideTittle(
              tittle: "Static",
              onTap: () => null,
            ),
            SideTittle(
              tittle: "Transfer",
              onTap: () => null,
            ),
            SideTittle(
              tittle: "Withdraw",
              onTap: () => null,
            ),
            SideTittle(
              tittle: "Settings",
              onTap: () => null,
            ),
            SideTittle(
              tittle: "News List",
              onTap: () => null,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.35),
            Align(
              alignment: Alignment.bottomLeft,
              child: CustomTextButton(
                btnFunction: () {
                },
                btnText: "Logout",
                btnTxtClr: AppColors.kRedClr,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.kBlueClr,
                        border: Border.all(
                          color: AppColors.kBlueClr,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    child: IconButton(
                      onPressed: () {
                        VariableKeys.key.currentState.openDrawer();
                      },
                      icon: Icon(
                        Icons.view_sidebar_sharp,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                  ClipOval(
                    child: Image.asset(
                      'assets/icons/man.jpg',
                      fit: BoxFit.cover,
                      width: 70,
                      height: 70,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  "Top Coins",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0, color: AppColors.kGreyClr),
                ),
                // child: SubTxt(txt: "Top Coins",),
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  primary: false,
                  shrinkWrap: true,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 8.0),
                      height: 150,
                      width: 120.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                          image: AssetImage('assets/icons/binance.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 8.0),
                      height: 150,
                      width: 120.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                          image: AssetImage('assets/icons/kucoin.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 8.0),
                      height: 150,
                      width: 120.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                          image: AssetImage('assets/icons/binance.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 8.0),
                      height: 150,
                      width: 120.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                          image: AssetImage('assets/icons/kucoin.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest NFTs",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, color: AppColors.kGreyClr),
                  ),
                  CustomTextButton(
                    btnFunction: () {},
                    btnText: "See all >",
                    btnTxtClr: Colors.blue,
                  ),
                ],
              ),
              new Divider(
                color: AppColors.kGreyClr,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 8.0),
                    height: 55,
                    width: 55.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                        image: AssetImage('assets/icons/kucoin.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SAND",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "3:34 pm",
                          style: TextStyle(
                              fontSize: 13.0,
                              color: AppColors.kGreyClr,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "-\$50.34",
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              new Divider(
                color: AppColors.kGreyClr,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 8.0),
                    height: 55,
                    width: 55.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                        image: AssetImage('assets/icons/bitcoin.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "BITCOIN",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "6:34 pm",
                          style: TextStyle(
                              fontSize: 13.0,
                              color: AppColors.kGreyClr,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "+\$30.34",
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
      bottomNavigationBar: Stack(
        overflow: Overflow.visible,
        alignment: new FractionalOffset(.5, 1.0),
        children: [
          BottomAppBar(
            // shape: CircularNotchedRectangle(),
            // clipBehavior: Clip.antiAlias,
            child: BottomNavigationBar(
              //selectedFontSize: 0.0,
              backgroundColor: Colors.grey[100],
              fixedColor: AppColors.kBlueClr,
              type: BottomNavigationBarType.fixed,
              onTap: _onItemTappped,
              currentIndex: _selectedIndex,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_outlined,
                      size: 25.0,
                    ),
                    // label: 'Home',
                    title: showIndicator(_selectedIndex == 0)),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.message_outlined,
                      size: 25.0,
                    ),
                    // label: 'Courses',
                    title: showIndicator(_selectedIndex == 1)),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.access_time_outlined,
                      size: 25.0,
                    ),
                    // label: 'Time Table',
                    title: showIndicator(_selectedIndex == 2)),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.account_circle_outlined,
                      size: 25.0,
                    ),
                    //label: 'Profile',
                    title: showIndicator(_selectedIndex == 3)),
              ],
            ),
          ),
          new Positioned(
            bottom: 40.0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  color: AppColors.kBlueClr,
                  border: Border.all(
                    color: AppColors.kBlueClr,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(18))),
              child: new IconButton(
                onPressed: () => print('button pressed'),
                icon: new Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget showIndicator(bool show) {
    return show
        ? Padding(
            padding: const EdgeInsets.only(top: 8),
            child: ClipPath(
              clipper: new CustomHalfCircleClipper(),
              child: new Container(
                height: 20.0,
                width: 30.0,
                decoration: new BoxDecoration(
                  color: AppColors.kBlueClr,
                  shape: BoxShape.circle,
                ),
              ),
            ))
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

//Side bar text
class SideTittle extends StatelessWidget {
  final tittle;
  final onTap;

  const SideTittle({Key key, this.tittle, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      onTap: onTap,
      contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
      title: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text(tittle,
            style: TextStyle(color: Colors.grey[700], fontSize: 15.0)),
      ),
    );
  }
}
