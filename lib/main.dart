import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxfirst/home.dart';
import 'package:getxfirst/language.dart';


//GetX is not only a state management library, but instead, it is a microframework combined with route management and dependency
// injection. It aims to deliver top-of-the-line development experience in an extra lightweight but powerful solution for Flutter.
// GetX has three basic principles on which it is built:-
// Performance: focused on minimum consumption of memory and resources.
// Productivity: intuitive and efficient tool combined with simplicity and straightforward syntax that ultimately saves development
// time.
// Organization: decoupling business logic from view and presentation logic cannot get better than this. You do not need context to
// navigate between routes, nor do you need stateful widgets.


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      translations: Languages(),
      locale: Locale('en','US'),
      fallbackLocale: Locale('en','us'),               //by default selected language in app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
       // useMaterial3: true,
      ),
      home: Home(name: 'Mohit_Verma'),


    );
  }
}
