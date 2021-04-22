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
    ),
      body: new Center(
        child: new Container( // div
        color: Color.fromRGBO(24, 0, 0, 100),
         width: 200.0,
         height: 100.0,
          child: new Center(
          child: new Text("Halo", style: new TextStyle(color: Colors.white),
          ),
        ),
      ),

      ) 
     
      
    );
  }
}