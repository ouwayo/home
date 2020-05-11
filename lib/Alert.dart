import 'package:flutter/material.dart';

 alert(String s) async {
  var keytologin;
    var mycontroller;
        if(mycontroller.text!=keytologin){
              showDialog<Widget>( builder: (BuildContext context) {
      return AlertDialog(
        title: Text('AlertDialog Title'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('The Key is not correct. Contact admin for a new key'),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Okay'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
}