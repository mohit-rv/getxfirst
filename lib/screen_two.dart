import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxfirst/home.dart';

class Stwo extends StatefulWidget {    //constructor
  final String name;
  const Stwo({Key?key, this.name = ''}) : super(key: key);

  @override
  State<Stwo> createState() => _StwoState();
}

class _StwoState extends State<Stwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen' +widget.name),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(onPressed: (){  //it will go back two screens
          Get.back();
          Get.back();
            }, child: Text("go back(@2T)")),

    TextButton(onPressed: (){
    Get.back();
    }, child: Text("go back(@1T)")),

          TextButton(onPressed: (){
            Get.to(Home());
          }, child: Text("go back(@1T)"))
        ],
      ),
    );
  }
}
