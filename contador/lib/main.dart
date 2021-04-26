import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
   
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 23;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           
           Text('Cantidad de veces que has agregado el boton'),
           Text(_counter.toString(), style: TextStyle(fontSize: 50,),),
           Text('$_counter'),
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
                FloatingActionButton(
                  onPressed: (){
                    setState(() {
                       _counter++;
                    });
                  }, 
                  child: Icon(Icons.add , color: Colors.white)
                ),
                 SizedBox(width: 20,),
                 FloatingActionButton(
                   onPressed: () {
                      setState(() {
                         _counter=0;
                      });
                   },
                   child: Text("Reset", style: TextStyle(color: Colors.white))
                 ) ,
                SizedBox(width: 20,),
                FloatingActionButton(onPressed: (){
                    setState(() {
                      _counter--;
                    });
                   },
                   child: Icon(Icons.looks_one_outlined, color: Colors.white)
                )
           ],)
        ],),
      ),
    );
  }
}