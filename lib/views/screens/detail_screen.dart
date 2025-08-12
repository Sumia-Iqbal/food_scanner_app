import 'package:flutter/material.dart';
import 'package:food_scanner_app/helpers/extensions.dart';

import '../../helpers/colors.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Project Details",
        style:TextStyle(
        )
        ),
        leading:
        GestureDetector(
          onTap:(){
            context.pop();
          },
          child: Container(
            margin:EdgeInsets.all(12),
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(12),
              color:Colors.grey
            ),
            child:Icon(Icons.arrow_back_ios_new),
          ),
        ),
      actions:[
        Container(
          margin:EdgeInsets.symmetric(horizontal:12),
          padding:EdgeInsets.symmetric(horizontal:20,vertical:10),
          decoration:BoxDecoration(
              color:boxColor3,
              borderRadius:BorderRadius.circular(20)
          ),
          child:Text("6 Days left",
              style:TextStyle(
                  color:Colors.green,
                  fontWeight:FontWeight.bold
              )
          ),

        ),
      ]
      ),
      body:Column(
        children:[
          Row(children:[

          ])
        ]
      )
    );
  }
}
