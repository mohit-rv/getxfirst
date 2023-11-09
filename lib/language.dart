

import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {

 @override
 Map<String , Map<String, String>> get keys => {
   'en_US' : {                                     //en - English,US - country code
    'message': 'What is your name',
    'name' : 'Mohit Verma'
   },
   'hi_IN' : {                                     //hi-Hindi,IN -Counrty code
     'message': 'आपका नाम क्या है',
     'name' : 'मोहित वर्मा'
   }
 } ;

}