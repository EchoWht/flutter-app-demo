import 'package:flutter/material.dart';
import 'dog_model.dart';

class AddDogFormPage extends StatefulWidget{

  @override
  _AddDogFormPageState createState() {
    // TODO: implement createState
    return new _AddDogFormPageState();
  }
}

class _AddDogFormPageState extends State<AddDogFormPage>{

  TextEditingController nameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: Text('Add Dog'),
        backgroundColor: Colors.orange,
      ),
      body: addDogForm,
    );
  }
  Widget get addDogForm{
    return Container(
       child: Padding(
         padding: const EdgeInsets.symmetric(
           vertical: 8.0,
           horizontal: 32.0,
         ),
         child: Column(
           children: <Widget>[
             Padding(
               padding: const EdgeInsets.only(bottom: 8.0),
               child: TextField(
                 decoration: InputDecoration(
                   labelText: 'Name the pup'
                 ),
                 controller: nameController,
                 onChanged: (v){
                   nameController.text=v;
                 },
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(bottom: 8.0),
               child: TextField(
                 decoration: InputDecoration(
                     labelText: "Pup's location"
                 ),
                 controller: locationController,
                 onChanged: (v){
                   locationController.text=v;
                 },
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(bottom: 8.0),
               child: TextField(
                 decoration: InputDecoration(
                   labelText: 'All about the pup',
                 ),
                 controller: descriptionController,
                 onChanged: (v){
                   descriptionController.text=v;
                 },
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: Builder(
                 builder: (context) {
                   // The basic Material Design action button.
                   return RaisedButton(
                     // If onPressed is null, the button is disabled
                     // this is my goto temporary callback.
                     onPressed: () => submitPup(context),
                     color: Colors.deepOrange,
                     child: Text('Submit Pup',style: new TextStyle(color: Colors.white)),
                   );
                 },
               ),
             ),
           ],
         ),
       ),
    );
  }

  //提交方法
  void submitPup(BuildContext context){
    if(nameController.text.isEmpty){
      print("Dogs need names");
    }else{
      var newDog=Dog(nameController.text, locationController.text, descriptionController.text);
      Navigator.of(context).pop(newDog);
    }
  }
}