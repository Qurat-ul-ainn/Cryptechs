import 'package:cryptechs/constants/validations/variables.dart';
import 'package:flutter/cupertino.dart';

GlobalKey<FormState> formKey =GlobalKey<FormState>();

bool validateForm(){
  if(formKey.currentState.validate()){
    //userRegistration();
    return true;
  }else{
    print("Form is NOT Validate");
    return false;
  }
}



String validateField(value){
  if(value.isEmpty)
  {
    return "Required";
  }
  else
  {
    return null;
  }

}

String validateEmail(value){
  String pattern = Variables.emailPattern;
  RegExp regExp = new RegExp(pattern);
  if (value.length == 0) {
    return "Email is Required";
  } else if(!regExp.hasMatch(value)){
    return "Invalid Email";
  }else {
    return null;
  }

}



