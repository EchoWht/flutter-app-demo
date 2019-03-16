import 'package:flutter/material.dart';

import 'dog_card.dart';
import 'dog_model.dart';

///注意这里继承的是StatelessWidget
class DogList extends StatelessWidget{

  final List<Dog> doggos;
  DogList(this.doggos);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildList(context);
  }

  ListView _buildList(context){
    return ListView.builder(
      itemBuilder: (context,int){
        return DogCard(doggos[int]);
      },
      itemCount: doggos.length,
    );
  }

}