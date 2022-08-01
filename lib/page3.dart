import 'package:bottomnavigation_sample/page1_inner.dart';
import 'package:flutter/material.dart';

class page3 extends StatelessWidget{
  const page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
            child :  Text(' page 3')
        ),
        TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const page1_inner()));
        }, child: Text('GO Forward'))
      ],
    );
  }

}