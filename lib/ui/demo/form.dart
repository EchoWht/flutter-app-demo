import 'package:flutter/material.dart';
import 'colors.dart';
import 'components/form_container.dart';

///基础表单
class BasicFormPage extends StatefulWidget {
  @override
  BasicFormPageState createState() {
    // TODO: implement createState
    return new BasicFormPageState();
  }
}

class BasicFormPageState extends State<BasicFormPage> {
  String dropdown1Value;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: mainBackgroundColor,
      appBar: AppBar(
        title: Text("Form"),
        backgroundColor: mainColor,
      ),
      body: new Container(
        padding: const EdgeInsets.all(30.0),
        margin: const EdgeInsets.all(10.0),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
//              padding: const EdgeInsets.all(-30.0),
//              margin: const EdgeInsets.all(-10.0),
              child: new Text(
                '个人信息',
                style: new TextStyle(fontSize: 20.0, color: Colors.teal[500]),
                textAlign: TextAlign.left,
              ),
//              color: mainColor,
            ),
            new Column(
              children: <Widget>[
                Container(
//                  padding: const EdgeInsets.only(top: 40.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    maxLength: 10,
                    decoration: InputDecoration(
                        labelText: "姓名"+"*",
                        hintText: '请输入姓名',
                        border: UnderlineInputBorder()
                    ),
                  ),
                ),
                Container(
//                  padding: const EdgeInsets.only(top: 40.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    decoration: InputDecoration(
                        labelText: "年龄",
                        hintText: '请输入年龄',
                        border: UnderlineInputBorder()
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// 表单1
class BasicFormPage1 extends StatefulWidget {
  @override
  BasicFormPageState1 createState() {
    // TODO: implement createState
    return new BasicFormPageState1();
  }
}

class BasicFormPageState1 extends State<BasicFormPage1> {
  String dropdown1Value = 'Four';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: mainBackgroundColor,
      appBar: AppBar(
        title: Text("Form"),
        backgroundColor: mainColor,
      ),
      body: new Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(10.0),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              height: 50.0,
              child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        child: Text("下拉:",style: TextStyle(fontSize: 20.0),),
                      ),
                      top: 10.5,),
                    Positioned(
                      child: Container(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: DropdownButton<String>(
                            hint: Text("请选择"),
                            disabledHint: Text("没有值"),
                            value: dropdown1Value,
                            onChanged: (String newValue) {
                              setState(() {
                                dropdown1Value = newValue;
                              });
                            },
                            items: <String>['One', 'Two', 'Three', 'Four','这是个比较长的选项']
                                .map<
                                DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
            ),
            Container(
              height: 50.0,
              child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        child: Text("姓名:",style: TextStyle(fontSize: 20.0),),
                      ),
                      top: 10.5,),
                    Positioned(
                      child: Container(
                        width: 290.0,
                        height: 115.0,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: TextField(),
                        ),
                      ),
                      left: 90.0,
                      right: 0.0,
                    ),
                  ]
              ),
            ),
            Container(
              height: 50.0,
              child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        child: Text("爱好:",style: TextStyle(fontSize: 20.0),),
                      ),
                      top: 10.5,),
                    Positioned(
                      child: Container(
                        width: 290.0,
                        height: 115.0,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: TextField(),
                        ),
                      ),
                      left: 90.0,
                      right: 0.0,
                    ),
                  ]
              ),
            ),
            Container(
              height: 100.0,
              child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        child: Text("工作经历:",style: TextStyle(fontSize: 20.0),),
                      ),
                      top: 10.5,),
                    Positioned(
                      child: Container(
                        width: 290.0,
                        height: 215.0,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: TextField(
                            maxLines: 3,
                            decoration: InputDecoration(
                              border: OutlineInputBorder()
                            ),
                          ),
                        ),
                      ),
                      left: 90.0,
                      right: 0.0,
                    ),
                  ]
              ),
            ),
            Container(
              height: 50.0,
              child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        child: Text("爱好:",style: TextStyle(fontSize: 20.0),),
                      ),
                      top: 10.5,),
                    Positioned(
                      child: Container(
                        width: 290.0,
                        height: 115.0,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: TextField(),
                        ),
                      ),
                      left: 90.0,
                      right: 0.0,
                    ),
                  ]
              ),
            ),
            Container(
              height: 50.0,
              child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        child: Text("爱好:",style: TextStyle(fontSize: 20.0),),
                      ),
                      top: 10.5,),
                    Positioned(
                      child: Container(
                        width: 290.0,
                        height: 115.0,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: TextField(),
                        ),
                      ),
                      left: 90.0,
                      right: 0.0,
                    ),
                  ]
              ),
            ),
//            Container(
//              height: 115.0,
//              child: Stack(
//                  children: <Widget>[
//                    Positioned(
//                      child: Container(
//                        width: 290.0,
//                        height: 115.0,
//                        child:  Card(
//                          color: Colors.amber,
//                          child: Align(
//                            alignment: Alignment.topRight,
//                            child: DropdownButton<String>(
//                              hint: Text("请选择"),
//                              disabledHint:Text("没有值"),
//                              value: dropdown1Value,
//                              onChanged: (String newValue) {
//                                setState(() {
//                                  dropdown1Value = newValue;
//                                });
//                              },
//                              items: <String>['One', 'Two', 'Three', 'Four'].map<
//                                  DropdownMenuItem<String>>((String value) {
//                                return DropdownMenuItem<String>(
//                                  value: value,
//                                  child: Text(value),
//                                );
//                              }).toList(),
//                            ),
//                          ),
//                        ),
//                      ),
//                      left: 50.0,
//                      right: 0.0,
//                    ),
//                    Positioned(child: Container(
//                      width: 100.0,
//                      height: 100.0,
//                      child: Text("下拉"),
//                      decoration: BoxDecoration(
//                          shape: BoxShape.circle, //形状-圆
//                          color: mainColor
//                      ), //装饰
//                    ), top: 7.5,)
//                  ]
//              ),
//            ),
          ],
        ),
      ),
    );
  }
}


/// 表单1
class BasicFormPage2 extends StatefulWidget {
  @override
  BasicFormPageState2 createState() {
    // TODO: implement createState
    return new BasicFormPageState2();
  }
}

class BasicFormPageState2 extends State<BasicFormPage2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: mainBackgroundColor,
      appBar: AppBar(
        title: Text("Form"),
        backgroundColor: mainColor,
      ),
      body: new Container(
        padding: const EdgeInsets.all(30.0),
        margin: const EdgeInsets.all(10.0),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            //https://github.com/flutter/flutter/issues/19488
            TextField(
                decoration: InputDecoration(
                  hintText: "请填写姓名",
                  hintStyle: TextStyle(
                      fontSize: 20.0,
                  ),
                  prefixIcon: Container(
                      padding: const EdgeInsets.only(top: 9.0),
                      child: Text('姓名：',style: TextStyle(fontSize: 20.0),)
                  ),
                ),
              style: TextStyle(
                fontSize: 20.0,color: mainColor
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                      labelText: "内容：",
                      border: OutlineInputBorder()
                  )
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20.0),
              child: ListBody(
                children: <Widget>[
                  Container(
                    child: new Text(
                      '个人信息:',
                      style: new TextStyle(fontSize: 20.0),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    )
                  )
                ],
              )
            ),
            Container(
              child:
              ListTile(
                leading: RichText(
                    text: TextSpan(
                        text: "*",
                        style: TextStyle(color: Colors.red),
                        children: <TextSpan>[
                          TextSpan(text: '姓名：', style: TextStyle(color: mainColor)),
                        ]
                    )
                ),
//                    leading: Icon(Icons.apps),
                title: TextField(
                ),
                contentPadding: const EdgeInsets.all(0.0),
              ),
            ),
            Container(
              child:
              ListTile(
                leading: RichText(
                    text: TextSpan(
                        text: "*",
                        style: TextStyle(color: Colors.red),
                        children: <TextSpan>[
                          TextSpan(text: '电话号码：', style: TextStyle(color: mainColor)),
                        ]
                    )
                ),
//                    leading: Icon(Icons.apps),
                title: TextField(
                ),
                contentPadding: const EdgeInsets.all(0.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
