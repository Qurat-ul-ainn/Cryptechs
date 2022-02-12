import 'package:cryptechs/constants/validations/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cryptechs/constants/ui_views/ui_components.dart';

class SubNewsFeedScreen extends StatelessWidget {
  const SubNewsFeedScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('News Feed', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          alignment: Alignment.topLeft,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30.0,
          ),
        ),
        automaticallyImplyLeading: true,
      ),
      body:     SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              NewsDetailsComponent(
                heading:
                "Algorithmic Trading Platform\nQuantconnect Extends Reach",
                date: " April 6,2021,2:20 AM",
                owner: "Sami",
                details:"Algorithmic trading has been used within trading exchanges since the seventies by using computers to follow the flow of financial markets. The method allows the execution of orders that are automated, and pre-programmed to adjust with price variables, time, and trade volumes. Algorithmic trading is used by cryptocurrency traders already as there is a slew of companies that offer automated services and open source trading bots."
                    "“Adding cryptocurrency support to Quantconnect was the next logical step for our business,” explains the Quantconnect founder, Jared Broad. “As a powerful open-source initiative, we saw an opportunity to reach a larger set of quants and engineers that have been investing in digital currencies. Now, with a strategic integration with GDAX, the Quantconnect community can design and instantly deploy cryptocurrency strategies.”" ,
              ),


            ],
          ),
        ),
      ),


    );
  }
}

//ListViewComponent for create sale bill B screen
class NewsDetailsComponent extends StatelessWidget {
  final heading;
  final owner;
  final date;
  final details;

  const NewsDetailsComponent({Key key, this.heading, this.owner, this.date, this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            "assets/icons/bitcoin.jpg",

            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(top:  15.0),
            child: Column(
              children: [
                Text(
                  heading,
                  textAlign: TextAlign.center,
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
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Text(
                     details,
                ),
                 ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
