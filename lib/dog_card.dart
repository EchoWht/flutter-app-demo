import 'package:flutter/material.dart';
import 'dog_model.dart';
import 'dog_detail_page.dart';

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
    //InkWell是一个特殊的Material小部件，可以让它的子节点可以点击
    return new InkWell(
      onTap: showDogDetailPage,
      child: Container(
        height: 115.0,
        child: Stack(
          children: <Widget>[
            Positioned(child: dogCard,left: 50.0,),
            Positioned(child: dogImage,top: 7.5,)
          ],
        ),//栈，我暂时理解为ui// 列表的一种，必需包含children
      ),
    );
  }

  String renderUrl;
  ///dog 图片的显示Widget
  Widget get dogImage {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle, //形状-圆形
          image: DecorationImage(
              image: NetworkImage(renderUrl ?? ''),
              fit: BoxFit.cover
          )
      ), //装饰
    );
  }

  ///显示dog其他信息的Widget
  Widget get dogCard{
    return Container(
      width: 290.0,
      height: 115.0,
      child: Card(
        color: Colors.amber,
        child: Padding(padding: const EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
            left: 64.0
        ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,//交叉轴对齐：交叉轴对齐开始，
            mainAxisAlignment: MainAxisAlignment.spaceAround,//主轴对齐：主轴对齐,空出周围
            children: <Widget>[
              Text(widget.dog.name,
                style: Theme.of(context).textTheme.headline
              ),
              Text(widget.dog.location,
                style: Theme.of(context).textTheme.subhead
              ),
              Row(
                children: <Widget>[
                  Icon(
                      Icons.star
                  ),
                  Text(':${widget.dog.rating / 10}')
                ],
              )
            ],
          ),
        ),
      ),
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


  ///点击跳转
  showDogDetailPage(){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context){
        return DogDetailPage(dog);
      })
    );
  }

}