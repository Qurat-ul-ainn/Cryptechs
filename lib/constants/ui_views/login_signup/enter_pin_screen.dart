import 'package:cryptechs/constants/app_colors.dart';
import 'package:cryptechs/constants/ui_views/ui_components.dart';
import 'package:flutter/material.dart';
class PinScreen extends StatelessWidget {
  const PinScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 30.0,
                ),
              ),
            ),
MainTxt(txt: "Enter Pin",size: 33.0,)     ,       SizedBox(height: 10,),
            SubTxt(
              txt: "Enter Your Pin code",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomContainer(),
                CustomContainer(),
                CustomContainer(),
                CustomContainer(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PinContainer(txt: "1",),
                PinContainer(txt: "2",),
                PinContainer(txt: "3",),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PinContainer(txt: "4",),
                PinContainer(txt: "5",),
                PinContainer(txt: "6",),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PinContainer(txt: "7",),
                PinContainer(txt: "8",),
                PinContainer(txt: "9",),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical:15.0),
                  padding: EdgeInsets.all(13.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54,width: 2),
                      shape: BoxShape.circle),
                  child: Center(
                    child: FlatButton(
                      onPressed: () {},
                      child: Image.asset(
                        "assets/icons/face.jpg",
                        height: 25,
                        width: 25,
                      ),
                    ),
                  ),
                ),
                PinContainer(txt: "0",),
                Container(
                  margin: EdgeInsets.symmetric(vertical:15.0),
                  padding: EdgeInsets.all(13.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54,width: 2),
                      shape: BoxShape.circle),
                  child: Center(
                    child: FlatButton(
                      onPressed: () {},
                      child: Image.asset(
                            "assets/icons/finger.jpg",
                            height: 25,
                            width: 25,
                          ),
                    ),
                  ),
                ),
                // OutlinedButton(
                //   onPressed: () {},
                //   style: ButtonStyle(
                //     shape: MaterialStateProperty.all(RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(500.0))),
                //   ),
                //   child: Image.asset(
                //     "assets/icons/google.png",
                //     height: 25,
                //     width: 25,
                //   ),
                // ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:20),
              child: SubTxt(
                txt: "Enter Your Pin code",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return                 Container(
      height: 14,
      width: 14,
      margin: EdgeInsets.symmetric(horizontal:2.0,vertical: 35.0),
      decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle
      ),
    );

  }
}

class PinContainer extends StatelessWidget {
final txt;

  const PinContainer({Key key, this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return             Container(
      margin: EdgeInsets.symmetric(vertical:15.0),
      padding: EdgeInsets.all(13.0),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.kBlueClr,width: 2),
           shape: BoxShape.circle),
      child: Center(
        child: FlatButton(
          onPressed: () {},
          child: Text(txt,
          style:TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
        ),
      ),
    )
    ;
  }
}
