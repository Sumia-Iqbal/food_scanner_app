import 'package:flutter/material.dart';
import 'package:food_scanner_app/helpers/colors.dart';
import 'package:food_scanner_app/helpers/extensions.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/custom_nav_bar.dart';
import '../screens/detail_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),

      body: SingleChildScrollView(
        child: Column(
              children:[
                Container(decoration:BoxDecoration(
                  color:boxColor,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(60),bottomLeft: Radius.circular(20))
                ),
                child:SafeArea(
                  child: Padding(
                    padding:EdgeInsets.symmetric(horizontal:24,vertical:20),
        
                    child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children:[
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children:[
                            IconButton(onPressed: () { }, icon: Icon(Icons.menu,size:30),),
                            Container(
                                padding:EdgeInsets.all(12),
                                decoration:BoxDecoration(
                              color:primaryColor,
                              shape:BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 10,spreadRadius: 5,
                                      color:primaryColor.withOpacity(0.3)
                                    )
                                  ]
                            ),
                                child:Icon(Icons.notifications,color:Colors.white,)
                            )
                          ]
        
                      ),
                      SizedBox(height:20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text('Hello John!',
                                style:TextStyle(
                                  color:primaryColor,
                                  fontWeight:FontWeight.bold,
                                  fontSize:40
                                )
                            ),
                            Text('Have a nice Day!',
                                style:TextStyle(
                                    color:primaryColor,
                                  fontSize:22
        
                                )
                            ),
                          ]
                      ),
                          SizedBox(height:30),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding:EdgeInsets.symmetric(horizontal:15,),
                                  decoration:BoxDecoration(color:Colors.white,
        
                                  borderRadius: BorderRadius.circular(20),
        
                                  ),
                                  child:Row(children:[
                                    Flexible(
                                      child: TextFormField(
                                        decoration:InputDecoration(
                                          border:InputBorder.none,
                                          hintText:"Search",
                                          hintStyle:TextStyle(
                                            color:lightPurple,
                                           fontSize:20,
                                          )
        
                                        )
                                      ),
        
                                    ),
                                    Icon(Icons.search,size:30,color:lightPurple,)
                                  ])
        
                                ),
                              ),
                              SizedBox(width:15),
        
                              CircleAvatar(backgroundColor: Colors.white,radius:25,child:Icon(Icons.filter_alt))
                            ],
                          )
                    ]),
        
                  ),
        
                )
                ),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal:24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text("My Reminders",
                      style:TextStyle(
                        color:primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
        
                      )
                      ),
                     GestureDetector(
                       onTap:(){context.openScreen(DetailScreen());},
                       child: Card(

                            child: Padding(
                              padding:EdgeInsets.all(24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:[
                                  Text("Website design and development",
                                      style:GoogleFonts.montserrat(
                                       fontSize:25,
                                        color:primaryColor,
                                        fontWeight:FontWeight.bold

                                      )
                                  ),
                                  SizedBox(height:10),
                                  Text("Luma digital Indonesia",
                                      style:GoogleFonts.montserrat(
                                       color:primaryColor,
                                        fontSize:18,
                                      )
                                  ),
                                  SizedBox(height:10),

                                  Text("Make the digital screen of app development",
                                      style:TextStyle(
                                          color:primaryColor.withOpacity(0.3),
                                          fontSize:20
                                      )
                                  ),
                                  SizedBox(height:10),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child:
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                                      decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "See details",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize:18

                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
                                        ],
                                      ),
                                    ),
                                  )



                                ]
                              ),
                            ),
                          ),
                     ),
                      SizedBox(height:20),
                      Row(children:
                          List.generate(3, (index){
                            return GestureDetector(
                              onTap:(){},
                              child: Container(
                                margin:EdgeInsets.only(right:15),
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child:
                                Text(
                                  "See details",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:15
        
                                  ),
                                ),
                              ),
                            );
                          })
        
                      ),SizedBox(height:20),
                      SizedBox(
                        height:height*0.2,
                        child: ListView.builder(
                          itemCount:3,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index){return Container(
                            margin:EdgeInsets.only(right:15),
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                            decoration: BoxDecoration(
                              color: boxColor2,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                  Row(
                                      mainAxisAlignment:MainAxisAlignment.spaceBetween,

                                      children:[
                                    Container(
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
                                    Container(
                                        decoration:BoxDecoration(
                                          shape:BoxShape.circle,
                                          border: Border.all(color:Colors.green,width:2)
                                        ),
                                      child:Icon(Icons.done_sharp,color:Colors.green)
                                    )
                                  ]),
                                  SizedBox(height:20),

                                  Text("FrontEnd Development",
                                      style:TextStyle(
                                          color:primaryColor,
                                          fontSize:20,
                                          fontWeight:FontWeight.bold
        
                                      )
                                  ),
                                  SizedBox(height:20),
                                  Text("Optimizing the user experience ,Using Java Script, HTML,and flutter ui skills",
                                      style:TextStyle(
                                          color:primaryColor.withOpacity(0.3)
        
                                      )
                                  ),
                                ])
                        ); })
        
                      ),
        
                    ]
                  ),
                )
        
        
              ],
        
          ),
      ),
      
    );
  }
}
