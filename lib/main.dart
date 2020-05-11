import 'package:flutter/material.dart';
import 'Login.dart'; 

import 'setupLocator.dart';

void main(){
  setupLocator();
   runApp(MaterialApp(
  title: "Home Security",
    home: Login()
));//MaterialApp


}
