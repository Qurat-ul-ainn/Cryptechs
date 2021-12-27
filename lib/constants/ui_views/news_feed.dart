import 'package:cryptechs/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cryptechs/constants/ui_views/ui_components.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:     ListView(
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
                      txt: "News Feed",
                    ),
                  ),
                ],
              ),
            ),
            ListViewComponent(
              heading:
              "Algorithmic Trading\nPlatform Quantconnect\nExtends Reach",
              date: " April 6,2021,2:20 AM",
              owner: "Sami",
            ),
            ListViewComponent(
              heading:
              "Algorithmic Trading\nPlatform Quantconnect\nExtends Reach",
              date: " April 6,2021,2:20 AM",
              owner: "Sami",
            ),
            ListViewComponent(
              heading:
              "Algorithmic Trading\nPlatform Quantconnect\nExtends Reach",
              date: " April 6,2021,2:20 AM",
              owner: "Sami",
            ),
            ListViewComponent(
              heading:
              "Algorithmic Trading\nPlatform Quantconnect\nExtends Reach",
              date: " April 6,2021,2:20 AM",
              owner: "Sami",
            ),
            ListViewComponent(
              heading:
              "Algorithmic Trading\nPlatform Quantconnect\nExtends Reach",
              date: " April 6,2021,2:20 AM",
              owner: "Sami",
            ),
            ListViewComponent(
              heading:
              "Algorithmic Trading\nPlatform Quantconnect\nExtends Reach",
              date: " April 6,2021,2:20 AM",
              owner: "Sami",
            ),
            ListViewComponent(
              heading:
              "Algorithmic Trading\nPlatform Quantconnect\nExtends Reach",
              date: " April 6,2021,2:20 AM",
              owner: "Sami",
            ),
            ListViewComponent(
              heading:
              "Algorithmic Trading\nPlatform Quantconnect\nExtends Reach",
              date: " April 6,2021,2:20 AM",
              owner: "Sami",
            ),
            ListViewComponent(
              heading:
              "Algorithmic Trading\nPlatform Quantconnect\nExtends Reach",
              date: " April 6,2021,2:20 AM",
              owner: "Sami",
            ),
            ListViewComponent(
              heading:
              "Algorithmic Trading\nPlatform Quantconnect\nExtends Reach",
              date: " April 6,2021,2:20 AM",
              owner: "Sami",
            ),
            ListViewComponent(
              heading:
              "Algorithmic Trading\nPlatform Quantconnect\nExtends Reach",
              date: " April 6,2021,2:20 AM",
              owner: "Sami",
            ),
            ListViewComponent(
              heading:
              "Algorithmic Trading\nPlatform Quantconnect\nExtends Reach",
              date: " April 6,2021,2:20 AM",
              owner: "Sami",
            ),
            ListViewComponent(
              heading:
              "Algorithmic Trading\nPlatform Quantconnect\nExtends Reach",
              date: " April 6,2021,2:20 AM",
              owner: "Sami",
            ),
            ListViewComponent(
              heading:
              "Algorithmic Trading\nPlatform Quantconnect\nExtends Reach",
              date: " April 6,2021,2:20 AM",
              owner: "Sami",
            ),

          ],
        ),
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.only(top: 20.0),
        //       child: Row(
        //         children: [
        //           IconButton(
        //             onPressed: () {},
        //             alignment: Alignment.topLeft,
        //             icon: Icon(
        //               Icons.arrow_back,
        //               size: 30.0,
        //             ),
        //           ),
        //           SizedBox(
        //             width: MediaQuery.of(context).size.width * 0.12,
        //           ),
        //           MainTxt(
        //             txt: "News Feed",
        //           ),
        //         ],
        //       ),
        //     ),
        //     ListView(
        //       children: [
        //         Row(
        //           children: [
        //             IconButton(
        //               onPressed: () {},
        //               alignment: Alignment.topLeft,
        //               icon: Icon(
        //                 Icons.arrow_back,
        //                 size: 30.0,
        //               ),
        //             ),
        //             SizedBox(
        //               width: MediaQuery.of(context).size.width * 0.12,
        //             ),
        //             MainTxt(
        //               txt: "News Feed",
        //             ),
        //           ],
        //         ),
        //         ListViewComponent(
        //           heading:
        //               "Algorithmic Trading\nPlatform Quantconnect\nExtends Reach",
        //           date: " April 6,2021,2:20 AM",
        //           owner: "Sami",
        //         ),
        //       ],
        //     ),
        //   ],
        // ),

    );
  }
}

//ListViewComponent for create sale bill B screen
class ListViewComponent extends StatelessWidget {
  final heading;
  final owner;
  final date;

  const ListViewComponent({Key key, this.heading, this.owner, this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20.0),
      child: Row(
        children: [

          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              "assets/icons/bitcoin.jpg",
              height: 140,
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:  15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: SubTxt(
                   txt: date,
                  ),
                ),
                Text(
                  "By $owner",
                  style: TextStyle(fontSize: 15, color: AppColors.kBlueClr),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
