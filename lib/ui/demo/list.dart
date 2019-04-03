import 'package:flutter/material.dart';
import 'colors.dart';

class BasicListPage extends StatefulWidget {
  @override
  BasicListPageState createState() {
    // TODO: implement createState
    return new BasicListPageState();
  }
}

class BasicListPageState extends State<BasicListPage> {
  String dropdown1Value;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: mainBackgroundColor,
      appBar: AppBar(
        title: Text("List"),
        backgroundColor: mainColor,
      ),
      body: new Container(
        padding: const EdgeInsets.all(30.0),
        margin: const EdgeInsets.all(10.0),
        color: Colors.white,
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(
                        width: 1.0, color: Color(0xFFFF7F7F7F)))
                ),
                child: ListTile(
                    leading: Text("leading"),
                    title: Text("title"),
                    subtitle: Text("subtile"),
                    trailing: Text("trailing")
                )),
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)))
              ),
              child: ListTile(
                  leading: Icon(Icons.description),
                  title: Text("title"),
                  subtitle: Text("subtile"),
                  isThreeLine:true,
                  trailing:Icon(Icons.arrow_right),
                  onTap:_toBasicListPage
              ),
            )
            ,
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)))
              ),
              child: ListTile(
                  leading: Icon(Icons.description),
                  title: Text("title"),
                  subtitle: Text("subtile"),
                  isThreeLine:true,
                  trailing:Icon(Icons.arrow_right),
                  onTap:_toBasicListPage
              ),
            )
            ,Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)))
              ),
              child: ListTile(
                  leading: Icon(Icons.ac_unit),
                  title: Text("沁园春·雪"),
                  subtitle: Text("北国风光，千里冰封，万里雪飘。望长城内外，惟余莽莽；大河上下，顿失滔滔。山舞银蛇，原驰蜡象，欲与天公试比高。",softWrap: false,overflow: TextOverflow.fade,),
                  isThreeLine:true,
                  trailing:Icon(Icons.arrow_right),
                  onTap:_toBasicListPage
              ),
            )
            ,
          ],
        ),
      ),
    );
  }
  _toBasicListPage(){
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) {
      return new DetailListPage();
    }));
  }
}



class DetailListPage extends StatefulWidget {
  @override
  DetailListPageState createState() {
    // TODO: implement createState
    return new DetailListPageState();
  }
}

class DetailListPageState extends State<DetailListPage> {
  String dropdown1Value;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: mainBackgroundColor,
      appBar: AppBar(
        title: Text("List"),
        backgroundColor: mainColor,
      ),
      body: new Container(
          padding: const EdgeInsets.all(30.0),
          margin: const EdgeInsets.all(10.0),
          color: Colors.white,
          child:ListView(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)))
                ),
                height: 50.0,
                child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Text("简介"),
                          ),
                        ),
                      ),
                      Positioned(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            child: Text("毛主席的一首诗。"),
                          ),
                        ),
                      ),
                    ]
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)))
                ),
                height: 50.0,
                child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Text("标题"),
                          ),
                        ),
                      ),
                      Positioned(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            child: Text("沁园春 雪"),
                          ),
                        ),
                      ),
                    ]
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)))
                ),
                child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Text("正文"),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          child: Text("北国风光，千里冰封，万里雪飘。 望长城内外，惟余莽莽；大河上下，顿失滔滔。山舞银蛇，原驰蜡象，欲与天公试比高。"),
                        ),
                      ),
                    ]
                ),
              ),
            ],
          )
      ),
    );
  }
  _toDetailListPage(){
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) {
      return new DetailListPage();
    }));
  }
}

