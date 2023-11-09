import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxfirst/screen_one.dart';

class Home extends StatefulWidget {
  final String name;
  const Home({Key?key, this.name = ''}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX App' +widget.name),
      ),
      body: Column(
        children: [

          //1****
            Card(
              child: ListTile(
                title: Text('Gtex dialoge Alert'),
                subtitle: Text('Ready to start a new journey in flutter'),
                onTap: (){
                  Get.defaultDialog(
                      title: 'delete Data',
                      titlePadding: EdgeInsets.all(10),
                      contentPadding: EdgeInsets.all(10),
                    middleText: 'Are you sure you want to delete this chate?',
                    textConfirm: 'YES',
                    textCancel: 'NO'
                  );
                },
              ),
            ),

          //2*****
          Card(
            child: ListTile(
              title: Text('Gtex dialoge Alert'),
              subtitle: Text('Ready to start a new journey in flutter'),
              onTap: (){
                Get.defaultDialog(
                  title: 'delete Data',
                  middleText: 'Are you sure you want to delete this chate?',
                  titlePadding: EdgeInsets.all(10),
                    contentPadding: EdgeInsets.all(10),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                      Get.defaultDialog(title: 'progress faild',middleText: 'Server Error occured');  //2nd diouloge box
                    },
                        child: Text('OK')),
                    cancel: TextButton(onPressed: (){Get.back();}, child: Text('Cancel')),
                );
              },
            ),
          ),

          //3****
          Card(
            child: ListTile(
              title: Text('Gtex dialoge Alert'),
              subtitle: Text('Ready to start a new journey in flutter'),
              onTap: (){
                Get.defaultDialog(
                  title: 'delete Data',
                  titlePadding: EdgeInsets.all(10),
                  contentPadding: EdgeInsets.all(10),
                  middleText: 'Are you sure you want to delete this chate?',
                  confirm: TextButton(onPressed: (){
                    Get.back();
                    Get.defaultDialog(title: 'progress faild',middleText: 'Server Error occured');  //2nd diouloge box
                  }, child: Text('OK')),
                  cancel: TextButton(onPressed: (){Get.back();}, child: Text('Cancel')),
                  content: Column(   //it will use when we want o write a lot of text otherwise middletext is okay
                    children: [
                      Text('Cupertino Icon'),
                      Text('Cupertino Icon'), Text('Cupertino Icon'), Text('Cupertino Icon'), Text('Cupertino Icon'), Text('Cupertino Icon'),
                    ],
                  )
                );
              },
            ),
          ),


          Card(
            child: ListTile(
              title: Text('Getx Bottom sheet'),
              subtitle: Text('Getx dialog alert box'),
              onTap: (){
                Get.bottomSheet(
                 Container(
                   decoration: BoxDecoration(color: Colors.white,
                     borderRadius: BorderRadius.circular(10)
                   ),
                   child: Column(
                     children: [
                       ListTile(leading: Icon(Icons.light_mode),title: Text('Light Mode'),
                       onTap: (){Get.changeTheme(ThemeData.light());},
                       ),
                       ListTile(leading: Icon(Icons.dark_mode),title: Text('Dark Mode'),
                       onTap: (){Get.changeTheme(ThemeData.dark());},
                       ),

                     ],
                   ),) 
                );
              },
            ),
          ),

          SizedBox(height: 30),

          ElevatedButton(onPressed: (){
            Get.to(Sone());               //Getx navigation
          }, child: Text('Go To Next Screen'))

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.snackbar('Mohit Verma',
          'pay your EMI ',
         // icon: Icon(Icons.message),
          backgroundColor: Colors.white
        );
        },
        child: Icon(Icons.message),
      ),


    );
  }
}
