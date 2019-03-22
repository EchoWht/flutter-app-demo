import 'package:flutter/material.dart';
import 'colors.dart';
///基础表单
class BasicFormPage extends StatefulWidget{
  @override
  BasicFormPageState createState() {
    // TODO: implement createState
    return new BasicFormPageState();
  }
}
class BasicFormPageState extends State<BasicFormPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Form"),
        backgroundColor: mainColor,
      ),
      body: new Container(
        padding: const EdgeInsets.only(left: 30.0,right: 30.0),
        child: new Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Name",
                  labelStyle: TextStyle(fontSize: 20.0)
              ),
            ),
            Row(
              children: <Widget>[
                Text("名称"),
                TextField(
                  keyboardType: TextInputType.text,
                  cursorWidth: 20.0,
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}