import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _greeting='hi';
  bool _increUp=true;

  void _incrementCounter() {
    setState(() {
     
      _counter++;
    });
    if(_counter==10){
      _increUp=false;
    }
    print(_counter);
  }

  void _decrementCounter() {
    setState(() {
     
      _counter--;
    });
    if(_counter==0){
      _increUp=true;
    }
  }

  @override
  Widget build(BuildContext context) {
    
    var floatingActionButton2 = FloatingActionButton(
        onPressed:(){
            if (_counter<10 && _increUp==true){
              _incrementCounter(); 

            }else {
              _decrementCounter();
            }
        },
        tooltip: 'Increment',
        child: Icon(Icons.add_location),
      );
    return Scaffold(
      appBar: AppBar(
       
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_greeting',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: floatingActionButton2, // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
