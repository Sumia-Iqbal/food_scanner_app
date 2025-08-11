import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../helpers/colors.dart';

class CustomContainer extends StatelessWidget {
  String title;
  String subtitle;
  String image;
  Color boxColor;
  VoidCallback onPressed;

   CustomContainer({required this.title,required this.subtitle,required this.image,required this.boxColor,required this.onPressed}) ;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        GestureDetector(
          onTap:onPressed,
          child: Container(
              padding:EdgeInsets.all(20),
              width:width,
              height:height*0.16,
              decoration:BoxDecoration(
                  color:boxColor,
                  borderRadius: BorderRadius.circular(16)
              ),
              child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text(title,
                        style:TextStyle(fontWeight:FontWeight.bold,
                            fontSize: 30
                        )
                    ),

                    Text(subtitle,
                      style:TextStyle(fontWeight:FontWeight.bold,
                        color:Colors.black38,
                        overflow: TextOverflow.ellipsis,

                      ),
                      maxLines:1 ,
                    ),

                  ]
              )
          ),
        ),
        Positioned(
            right:8,
            child:Image.asset(image,height:220,width:220,fit:BoxFit.cover,)
        )
      ],
    );
  }

}
