import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Flutter Demo",
      routes: {
        "third_page":(context)=>ThirdPage()
      },
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Blskye"),
        ),
        body: FirstPageContainer(),
      ),
    )

  );
}

/// 第一页
class FirstPageContainer extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        color: Colors.amberAccent,
        width: 300,
        height: 300,
        child: Center(
          child: FlatButton(
            onPressed: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context){
                return new SecondPage();
              }));
            },
            color: Colors.orange,
            textColor: Colors.white,
            child: Text("to New Router"),
          ),

        ),
      ),
    );
  }
}

///一个新的路由（第二个页面）
/// https://book.flutterchina.club/chapter2/flutter_router.html
class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Container(
          color: Colors.black38,
          child: Text("This is another page."),
        ),
      ),
    );
  }
}

///第三个页面
/// https://book.flutterchina.club/chapter2/flutter_router.html
class ThirdPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),
      body: Center(
        child: Container(
          color: Colors.black38,
          child: Text("This is another page."),
        ),
      ),
    );
  }
}


