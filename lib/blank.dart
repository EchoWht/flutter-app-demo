import 'package:flutter/material.dart';

// 教程参考：https://flutterbyexample.com/basic-dogs-app-setup

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Blank App",
      home:new MyHomePage(key, "Blank")
    );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage(Key key,this.title):super(key:key);
  final String title;

  @override
  _MyHomePageState createState() {
    // TODO: implement createState
    return new _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(),
      floatingActionButton: new Builder(builder: (context) {
        return FloatingActionButton(
          child: new Text("Click"),
          onPressed: () {
            Scaffold.of(context).showSnackBar(
                new SnackBar(
                  content: new Text("Snake Bar"),
                  backgroundColor: Colors.amber,)
            );
          },);
      }),
    );
  }
}