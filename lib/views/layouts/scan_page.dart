import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_scanner_app/helpers/colors.dart';
import 'package:food_scanner_app/widgets/custom_container.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controllers/scan_controller.dart';

class ScanPage extends StatelessWidget {
String? scanResult;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // ScanCodeController controller = Get.put(ScanCodeController());



    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding:EdgeInsets.symmetric(horizontal:24),
          child: Column(
            children:[
              SizedBox(height:40),
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Row(
                    children:[
                      CircleAvatar(radius:40,backgroundColor:primaryColor,backgroundImage:
                      AssetImage('assets/images/—Pngtree—handsome indonesian man doing salute_21130015.png',),),
                       SizedBox(width:10),
                       RichText(text: TextSpan(text: "Hello, Javed!\n",
                       style:TextStyle(
                         color:Colors.black,
                         fontWeight:FontWeight.bold,
                         fontSize:35

                       ),
                         children: [
                           TextSpan(text:"Welcome Back",
                             style:TextStyle(
                                 color:Colors.black38,
                               fontSize:20

                             ),
                           )
                         ]
                       )),

                    ]
                  ),
                  CircleAvatar(backgroundColor: Colors.black,radius: 30,child: Icon(Icons.notifications_active,color: Colors.white,size:30),)
                ]
              ),
              SizedBox(height:20),
              CustomContainer(title: "Search Food", subtitle: 'Lorem Ipsum goes to..', image: 'assets/images/—Pngtree—handsome indonesian man doing salute_21130015.png', boxColor: secondaryColor,onPressed:(){}),
              SizedBox(height:20),
              CustomContainer(title: "Scan Barcode", subtitle: 'Lorem Ipsum goes to..', image: 'assets/images/—Pngtree—handsome indonesian man doing salute_21130015.png', boxColor: primaryColor,onPressed:(){}),
              SizedBox(height:30),
              Container(
                padding:EdgeInsets.all(20),
                decoration:BoxDecoration(
                  color:Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20)
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text("How to use",
                    style:TextStyle(
                      fontWeight:FontWeight.bold,
                      fontSize:20
                    )
                    ),
                    Text("is simply dummy text of the printing"
                        " and typesetting industry. Lorem Ipsum has been"
                        " the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum"
                        " passages, and more recently with desktop publishing",
                        style:TextStyle(
                          color:Colors.black38
                        )
                    )
                  ]
                )
              )

            ]
          ),
        ),
      )
    );
  }

}
