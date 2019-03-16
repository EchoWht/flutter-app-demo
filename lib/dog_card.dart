import 'package:flutter/material.dart';
import 'dog_model.dart';

class DogCard extends StatefulWidget{
  final Dog dog;

  DogCard(this.dog);
  @override
  _DogCardState createState() {
    // TODO: implement createState
    return new _DogCardState(this.dog);
  }
}


class _DogCardState extends State<DogCard>{
  Dog dog;
  _DogCardState(this.dog);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(this.dog.name);
  }

}