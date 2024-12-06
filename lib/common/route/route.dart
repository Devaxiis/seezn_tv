
import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext{


  void navigatePush(Widget route){
    Navigator.push(this,MaterialPageRoute(builder: (_)=> route) );
  }

  /// navigate to a named route and replace the current route
  void navigateReplacement(Widget route){
    Navigator.pushReplacement(this,MaterialPageRoute(builder: (_)=> route));
  }

  /// navigate to a named route and remove all prviuce routes
  void navigateAndRemoveUntil(Widget route){
    Navigator.pushAndRemoveUntil(this, MaterialPageRoute(builder: (_)=> route), (r)=>false);
  }

  /// Navigate to back
  void navigateBack(){
    Navigator.pop(this);
  }

}