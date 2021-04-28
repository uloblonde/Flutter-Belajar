import 'package:flutter/material.dart';

void main (){
  runApp(new MaterialApp(home: new HalamanHalo(),  //memanggil widget material app yang memiliki home dengan tujuan memanggil halaman halo
  ));
}

class HalamanHalo extends StatelessWidget{
  @override
  Widget build(BuildContext context) { //membuat sebuah widget
    return new Scaffold(                        //yang memberikan nilai balik pada Scaffold, Scaffold adalah Activity pada flutter
    appBar: new AppBar(
      leading: new Icon(Icons.home),
      title: new Center(
        child: new Text("Halo APK")
      ),
        actions: <Widget>[new Icon(Icons.search)],
    ), 
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, //ben iso strectch posisine
          children: <Widget>[
            new Cardku(icon: Icons.home, teks: "Home", warnaIcon: Colors.cyan,),
            new Cardku(icon: Icons.local_pizza, teks: "Home", warnaIcon: Colors.black,),
            new Cardku(icon: Icons.home, teks: "Home", warnaIcon: Colors.brown,),

          ],
        ),
        ),
      );
  }
}

class Cardku extends StatelessWidget{
  
  Cardku({this.icon,this.teks,this.warnaIcon});
  final IconData icon;
  final String teks;
  final Color warnaIcon;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Column(
          children: <Widget>[
           new Icon(
             icon, 
             size: 50.0, 
             color: warnaIcon,),
           new Text(
             teks,
              style: new TextStyle(fontSize: 20.0),)
          ],
        )
      )
    );
  }
}