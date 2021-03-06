import 'package:flutter/material.dart';
import 'form.dart';
import 'list.dart';
import 'colors.dart';
void main()=>runApp(new MyApp());



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: "Blank App",
        home:new LoginPage()
    );
  }
}

///登录页
class LoginPage extends StatefulWidget{
  @override
  LoginPageState createState() {
    // TODO: implement createState
    return new LoginPageState();
  }
}

class LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Container(
        padding: const EdgeInsets.only(left: 30.0,right: 30.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            Text("Login",style: TextStyle(fontSize: 30.0),),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                icon: Icon(Icons.people),
                labelText: "Name"
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: "Password"
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(top: 40.0),
              child: FlatButton(onPressed: toLoginPage, child: new Text("Login"), color: mainColor,textColor: Colors.white,)
            )

          ],
        ),
      ),
    );
  }
  ///To Login Page
  toLoginPage (){
    print("login");
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) {
      return new HomePage();
    }));
  }
}



///HomePage

class HomePage extends StatefulWidget{
  @override
  HomePageState createState() {
    // TODO: implement createState
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: mainColor,
      ),
      body: new Container(
        //color: _lightColor,
        child:GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          padding: const EdgeInsets.all(15.0),
          //childAspectRatio: 1.3,
          children: <Widget>[
            GridTile(
              header: GridTileBar(
                title: Text("基础表单"),
                leading: Icon(Icons.star),
              ),
              child: InkWell(
                onTap:_toBasicFormPage ,
                child: new Container(
                  color: lightBackgroundColor,
                ),
              ),
            ),
            GridTile(
              header: GridTileBar(
                title: Text("表单样式1"),
                leading: Icon(Icons.star),
              ),
              child: InkWell(
                onTap:_toBasicFormPage1 ,
                child: new Container(
                  color: lightBackgroundColor,
                ),
              ),
            ),
            GridTile(
              header: GridTileBar(
                title: Text("表单样式2"),
                leading: Icon(Icons.star),
              ),
              child: InkWell(
                onTap:_toBasicFormPage2 ,
                child: new Container(
                  color: lightBackgroundColor,
                ),
              ),
            ),
            GridTile(
              header: GridTileBar(
                title: Text("List"),
                leading: Icon(Icons.list),
              ),
              child: InkWell(
                onTap:_toBasicListPage ,
                child: new Container(
                  color: lightBackgroundColor,
                ),
              ),
            )
          ],
        )
      ),
    );
  }

  _toBasicFormPage(){
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) {
      return new BasicFormPage();
    }));
  }
  _toBasicFormPage1(){
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) {
      return new BasicFormPage1();
    }));
  }
  _toBasicFormPage2(){
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) {
      return new BasicFormPage2();
    }));
  }
  _toBasicListPage(){
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) {
      return new BasicListPage();
    }));
  }
}