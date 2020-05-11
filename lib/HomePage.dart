import 'package:flutter/material.dart';






class HomePage extends StatefulWidget{
  
  String security_key;
  String title;


  HomePage(this.title);

  @override
  _MyHomePageState  createState()  => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  List<String>listof=['Monitoring Page','Notifications','Records'];
  
  



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Text(widget.title),
        actions: <Widget>[
          new IconButton (icon: new Icon(Icons.help),
              onPressed: ()=>debugPrint('Help')),
          new IconButton(
            icon: new Icon(Icons.search),
            onPressed: ()=>debugPrint('Search'),
          )
        ]
      ),

      body: new Card(
       child: ListView.builder(
         itemCount:this.listof.length,
            itemBuilder: (context,index) =>listDataItem(this.listof[index]),)

         ),
//            return ListTile(
//              title: Text(listof[index]),
//              onTap: () =>Navigator.push(
//              context,
//            MaterialPageRoute(
//            builder: (context) => MonitoringPage()
//            ),-*/
      floatingActionButton: new FloatingActionButton(onPressed: ()=>debugPrint('FB Button Click'),
        child: new Icon(Icons.live_help),
       backgroundColor: Colors.cyan,
       foregroundColor: Colors.white),
    );

  }

}


getItemAndNavigate(String item,List<String> list, BuildContext context){
    if(item==list[0]) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => null,
            )
          );
    }
    else if(item==list[1]){
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => null,
            )
          );
    }
    else{
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => null,
            ));
    }
}
class listDataItem extends StatelessWidget {

  String itemName;

  listDataItem(this.itemName);
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
        onTap:
            () {},//=> getItemAndNavigate(itemName,listof, context),

      child:new Card(
      elevation: 7.0,
      child: new Container(
        margin: EdgeInsets.all(7.0),
        padding: EdgeInsets.all(6.0),

      child: new Row(
        children:<Widget>[
           new CircleAvatar(
             child: new Text(itemName[0]
             ),
          backgroundColor: Colors.cyan,
          foregroundColor:Colors.white ,),
             new  Padding(padding: EdgeInsets.all(8.0)),
             new Text(itemName,style: TextStyle(fontSize:20.0),
           ),
          ]
      ),

    )
           )

           );
  }


}

