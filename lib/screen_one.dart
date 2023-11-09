import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxfirst/screen_two.dart';

class Sone extends StatefulWidget {
  const Sone({super.key});

  @override
  State<Sone> createState() => _SoneState();
}

class _SoneState extends State<Sone> {
  @override
  Widget build(BuildContext context) {

    final heigh = MediaQuery.of(context).size.height*1;              //it defines the height of screen 1 = 100%

    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Column(//mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: heigh *.2,
            width: Get.width * .99,          //giving height and width to container by Getx method
            color: Colors.blue,
          ),
          Container(
            height: heigh *.2,
            width: Get.width * .99,          //giving height and width to container by Getx method
            color: Colors.redAccent,
          ),
          Center(
            child: TextButton(
             onPressed: (){    Get.to(Stwo(name: "Khemoo",));  //passing data through routing
               },
              child: Text('Next Screen(pdata)',style: TextStyle(decoration: TextDecoration.underline),),
            ),
          )
        ],
      ),
    );
  }
}
