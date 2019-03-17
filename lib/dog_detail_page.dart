import 'package:flutter/material.dart';

import 'dog_model.dart';

class DogDetailPage extends StatefulWidget{

  final Dog dog;

  DogDetailPage(this.dog);

  @override
  _DogDetailPageState createState() {
    // TODO: implement createState
    return new _DogDetailPageState();
  }
}

class _DogDetailPageState extends State<DogDetailPage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: Text('Meet ${widget.dog.name}'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(children: <Widget>[
        dogProfile,addYourRating
      ],),
    );
  }

  final double dogAvatarSize=150.0;

  ///狗像
  Widget get dogImage{
    return Container(
      height: dogAvatarSize,
      width: dogAvatarSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          const BoxShadow(
            // just like CSS:
            // it takes the same 4 properties
              offset: const Offset(1.0, 2.0),
              blurRadius: 2.0,
              spreadRadius: -1.0,
              color: const Color(0x33000000)),
          const BoxShadow(
              offset: const Offset(2.0, 1.0),
              blurRadius: 3.0,
              spreadRadius: 0.0,
              color: const Color(0x24000000)),
          const BoxShadow(
              offset: const Offset(3.0, 1.0),
              blurRadius: 4.0,
              spreadRadius: 2.0,
              color: const Color(0x1F000000)),
        ],
        image: DecorationImage(image: NetworkImage(widget.dog.imageUrl),fit: BoxFit.cover)
      ),
    );
  }

  ///评分
  Widget get rating{
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.star,size: 40.0,),
        Text('${widget.dog.rating} / 10',style: Theme.of(context).textTheme.display2)
      ],
    );
  }

  ///个狗信息
  Widget get dogProfile{
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.yellow[800],
            Colors.yellow[700],
            Colors.yellow[600],
            Colors.yellow[400],
          ],)
      ),
      child: Column(
        children: <Widget>[
          dogImage,//1.狗像
          Text(
            '${widget.dog.name}  🎾',
            style: TextStyle(fontSize: 32.0),
          ),//2.狗名
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            child: Text(widget.dog.description),
          ),//3.狗描述
          rating,//4.评分
        ],
      ),
    );
  }

  ///打分功能
  double _sliderValue=10.0;
  Widget get addYourRating{
    return  Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 16.0
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                  child: Slider(
                    min: 0.0,
                    max: 15.0,
                    value: _sliderValue,
                    onChanged: (v) {
                      setState(() {
                        _sliderValue = v;
                      });
                    }))
            ],
          ),
        ),
        Container(
          width: 50.0,
          alignment: Alignment.center,
          child: Text('${_sliderValue.toInt()}',style: Theme.of(context).textTheme.display1,),
        ),
        submitRatingButton
      ],
    );
  }

  //提交按钮
  Widget get submitRatingButton{
    return RaisedButton(
      onPressed: updateRating,
      color: Colors.deepOrange,
      child: Text('Submit',style: new TextStyle(color: Colors.white)),
    );
  }
  void updateRating(){
    if(_sliderValue<10){
      _ratingErrorDialog();
    }else{
      setState(() {
        widget.dog.rating=_sliderValue.toInt();
      });
    }
  }
  //校验
  Future<Null> _ratingErrorDialog() async{
    return showDialog(context: context,builder: (BuildContext context){
      return AlertDialog(
        title: Text('Error!'),
        content: Text("They're good dogs, Brant."),
        actions: <Widget>[
          FlatButton(
            child: Text('Try again'),
            onPressed:() {
              Navigator.of(context).pop();
            },
          )
        ],
      );
    });
  }
  
}