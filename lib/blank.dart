import 'package:flutter/material.dart';
import 'dog_model.dart';
import 'dog_card.dart';
import 'dog_list.dart';

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
  List<Dog> initialDoggos = []
    ..add(Dog('Ruby', 'Portland, OR, USA',
        'Ruby is a very good girl. Yes: Fetch, loungin\'. No: Dogs who get on furniture.'))
    ..add(Dog('Rex', 'Seattle, WA, USA', 'Best in Show 1999'))
    ..add(Dog('Rod Stewart', 'Prague, CZ',
        'Star good boy on international snooze team.'))
    ..add(Dog('Herbert', 'Dallas, TX, USA', 'A Very Good Boy'))
    ..add(Dog('Buddy', 'North Pole, Earth', 'Self proclaimed human lover.'));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        backgroundColor: Colors.orange,
      ),
      body: new Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.green[800],
                Colors.green[700],
                Colors.green[600],
                Colors.green[400],
              ],
              stops: [0.1, 0.5, 0.7, 0.9],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            )
        ),
        child: new Center(
          child:  DogList(initialDoggos),
        )
      ),
      floatingActionButton: new Builder(builder: (context) {
        return FloatingActionButton(
          backgroundColor: Colors.orange,
          child: new Icon(Icons.add),
          onPressed: () {
            Scaffold.of(context).showSnackBar(
                new SnackBar(
                  content: new Text("Snake Bar"),
                  backgroundColor: Colors.amberAccent,)
            );
          },);
      }),
    );
  }
}