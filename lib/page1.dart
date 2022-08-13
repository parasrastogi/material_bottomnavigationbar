import 'package:bottomnavigation_sample/page1_inner.dart';
import 'package:flutter/material.dart';

class page1 extends StatelessWidget{
  const page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.cyan,
      child:
      Column(
        children: [
          const Center(
              child :  Text(' page 1 demo new')
          ),
          TextButton(onPressed: (){
            Navigator.of(context).push( MaterialPageRoute(builder: (context) => const page1_inner()));

          }, child: Text('GO Forward press it.....1111 2222 3333 444'))

        ],
      ),
    );
  }

}
