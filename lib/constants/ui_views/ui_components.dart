
import 'package:cryptechs/constants/app_colors.dart';
import 'package:flutter/material.dart';

//All Tittles
class MainTxt extends StatelessWidget {
  final txt;
  final size;

  const MainTxt({Key key, this.txt, this.size}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

//All SubText
class SubTxt extends StatelessWidget {
  final txt;

  const SubTxt({Key key, this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 15.0, color:AppColors.kGreyClr),
    );
  }
}

//Blue Custom Button

class CustomButton extends StatelessWidget {
  final btnTxt;
  final btnFunction;

  const CustomButton({Key key, this.btnTxt, this.btnFunction})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: 60,
      child: FlatButton(
        onPressed: btnFunction,
        color: AppColors.kBlueClr,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        child: Text(
          btnTxt,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
           // fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

//Clickable text /Text Button
class  CustomTextButton extends StatelessWidget {
final btnFunction;
final btnText;
final btntTxtClr;

  const CustomTextButton({Key key, this.btnFunction, this.btnText, this.btntTxtClr}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: btnFunction, child: Text(btnText,style: TextStyle(color: btntTxtClr),));
  }
}
