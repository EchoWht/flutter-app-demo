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

  //将dog的一些属性显示在界面上
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: dogImage,
    );
  }

  String renderUrl;
  ///dog 图片的显示Widget
  Widget get dogImage{
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        shape:BoxShape.circle,//形状-圆形
        image: DecorationImage(
            image: NetworkImage(renderUrl ?? ''),
            fit: BoxFit.cover
        )
      ),//装饰
    );
  }

  /// initState 会在state创建时执行
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    renderDogPic();//调用异步获取图片的方法

  }

  ///异步的去服务器获取图片
  void renderDogPic() async{
    await dog.getImageUrl();
    setState(() {
      renderUrl=dog.imageUrl;
    });
  }

}