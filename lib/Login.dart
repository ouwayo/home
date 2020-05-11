import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:home/HomePage.dart';

import 'CustomInputField.dart';


class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   
    return LoginState();
  }

}

class LoginState extends State<Login>{
  final String keytologin = '2345';
 bool isCorrect = true;
  @override
  Widget build(BuildContext context) {
 TextEditingController mycontroller = TextEditingController();

    return Scaffold(
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        color: Colors.cyan,

        child: Stack(
          children:<Widget>[
            Align(
              alignment: Alignment.bottomRight,
              widthFactor: 0.5,
              heightFactor: 0.5,
              child:Material(
                color:Color.fromRGBO(255,255,255,0.4),
                borderRadius: BorderRadius.all(Radius.circular(200)),
                child: Container(
                  width: 400,
                  height: 400,
                  ),
                ),),
            Align(
              alignment: Alignment.bottomLeft,
              widthFactor: 0.2,
              heightFactor: 0.2,
              child:Material(
                color:Color.fromRGBO(255,255,255,0.4),
                borderRadius: BorderRadius.all(Radius.circular(300)),
                child: Container(
                  width: 400,
                  height: 400,
                  ),
                ),),
            Center(
              child: Container(
                width: 400,
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Material(
                        elevation:10.0,
                        borderRadius: BorderRadius.all(Radius.circular(100.0)),
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('images/homesec.png',width:100,height:100))),
                    CustomInputField(
                        Icon(Icons.lock,color:Colors.white),'Security Key',mycontroller),
                    SizedBox(height:5.0),
                    Container(
                      width:150,
                      height: 60,
                      child: ListView(children: <Widget>[RaisedButton(onPressed: (){
                        (mycontroller.text==keytologin)?
                      Navigator.push(
                            context,
                             MaterialPageRoute(
                                     builder: (context) => HomePage('Home Security')
                                     )):setState((){isCorrect =false;}); 
                                    //  (mycontroller.text!=keytologin)?
                      },
                                     color:Colors.cyanAccent,textColor:Colors.white,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                            child:Text('Login',style: TextStyle(
                                                fontSize: 20
                                                ),),
                                          ),
                                          isCorrect ==false ? CupertinoAlertDialog(
                                            title: Text('Wrong key'),
                                            content: Text('key is incorrect'),
                                            actions: <Widget>[
                                              CupertinoDialogAction(
                                                    child: Text('Okay'),
                                                    onPressed: () {
                                                      Navigator.of(context).pop();
                                                    },
                                                  ),
                                            ],


                                          ):SizedBox(height: 0,)
                                          ],),),],
                  )),
                  
                ),
              
          ],
          ),

        ),
      );

  }
}