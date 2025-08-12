import 'package:flutter/material.dart';
import 'package:food_scanner_app/widgets/custom_nav_bar.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:SafeArea(
      child: Padding(
        padding:EdgeInsets.symmetric(horizontal:24),
        child: Column(
          children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap:(){
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
              ],

            )
          ]
        ),
      ),
    )
    );
  }
}
