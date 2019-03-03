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

/// 第一页(主页)
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
          child: new Column(
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, new MaterialPageRoute(builder: (context) {
                    return new SecondPage("Go!");
                  }));
                },
                color: Colors.orange,
                textColor: Colors.white,
                child: Text("to Second Page"),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, new MaterialPageRoute(builder: (context) {
                    return new ThirdPage();
                  }));
                },
                color: Colors.orange,
                textColor: Colors.white,
                child: Text("to Third Page"),
              ),

              FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, new MaterialPageRoute(builder: (context) {
                    return new CounterPage();
                  }));
                },
                color: Colors.orange,
                textColor: Colors.white,
                child: Text("计数器"),
              ),
            ],
          ),

        ),
      ),
    );
  }
}

///一个新的路由（第二个页面）
/// https://book.flutterchina.club/chapter2/flutter_router.html
class SecondPage extends StatelessWidget{
  SecondPage(this.msg);
  final String msg;
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
          child: FlatButton(
            onPressed: (){
              Navigator.pushNamed(context, "third_page");//通过别名来跳转到另一页面
            }, 
            child: Text(this.msg)
          ),
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
      body: Container(
        child: new Column(
          children: <Widget>[
            new Text("Text1"),
            new Text("Text2"),
            new FlatButton(
              onPressed: null, child: Text("Button"), color: Colors.orange,)
          ],
        ),
      ),
    );
  }
}


/// 计数器页面--State生命周期
class CounterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //return CounterWidget();
    //return Text("Hi");
    //return TapboxA();
    return ColorFulButton();
  }
}

class CounterWidget extends StatefulWidget{
  const CounterWidget({
    Key key,
    this.initValue:0
  });

  final int initValue;

  @override
  _CounterWidgetState createState() {
    // TODO: implement createState
    return new _CounterWidgetState();
  }
}

class _CounterWidgetState extends State<CounterWidget>{

  int _counter;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _counter=widget.initValue;
    print("initState");

  }

  @override
  Widget build(BuildContext context) {
    print("build");
    // TODO: implement build
    return Center(
      child: FlatButton(onPressed: () {
        setState() {
          ++_counter;
        }
      }, child: Text('$_counter')),
    );
  }
  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("deactivate");
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose");
  }
  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    print("reassemble");
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}



class TapboxA extends StatefulWidget {
  TapboxA({Key key}) : super(key: key);

  @override
  _TapboxAState createState() => new _TapboxAState();
}

class _TapboxAState extends State<TapboxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            _active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}


// 小例子：Widget管理自身状态--点击按钮改变背景颜色

class ColorFulButton extends StatefulWidget{
  @override
  _ColorFulButtonState createState() {
    // TODO: implement createState
    return _ColorFulButtonState();
  }
}

class _ColorFulButtonState extends State<ColorFulButton>{

  bool _active =true;

  void _changeColor(){
    setState(() {
      this._active=!_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Center(
          child: FlatButton(onPressed: _changeColor,
            child: Text("Hello Color"),
            color: _active ? Colors.orange : Colors.amberAccent,
            textColor:  _active ? Colors.amberAccent : Colors.orange,
          ),
        ),
    );
  }

}