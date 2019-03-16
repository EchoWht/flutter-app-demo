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
      body: dogProfile,
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
            Colors.green[800],
            Colors.green[700],
            Colors.green[600],
            Colors.green[400],
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
          rating//4.评分
        ],
      ),
    );
  }
}