import 'package:flutter/material.dart'; 

class ForgotPassword extends StatelessWidget{

   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
       padding:EdgeInsets.only(top:15.0,left:20.0),
       child: InkWell(
         child:Text('Forgot Password',
         style: TextStyle(color: Colors.pink,
         fontWeight: FontWeight.bold,
         fontSize: 20,
         fontFamily: 'Montserrat',
         decoration: TextDecoration.underline),),
    ),
    );
}
}