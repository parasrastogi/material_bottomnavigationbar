import 'package:flutter/material.dart';

class page1_inner extends StatelessWidget{
  const page1_inner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Column(
         children: [
           const Center(
             child :  Text('inner page 1')
           ),
           TextButton(onPressed: (){
             Navigator.pop(context);
           }, child: const Text('GO BACK TO PAGE 1'))
         ],
       ),
     );
  }

}