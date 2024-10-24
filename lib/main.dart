import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(  
        appBar: CupertinoNavigationBar(

          middle: Text("SATHWIK'S PORTFOLIO"),
          backgroundColor: Colors.green,

          leading: Icon(CupertinoIcons.home,size: 25,),
            trailing: IconButton(onPressed: () {}, 
            icon:Icon(CupertinoIcons.arrow_right),iconSize: 25,),

        ),
       backgroundColor:Colors.black,
       body: Center(
        child:SingleChildScrollView(
          scrollDirection: Axis.horizontal,
        
         
           child: Row(
             children: [
               Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                            color:  Colors.green,
                            borderRadius: BorderRadius.circular(20)
               
                ),
                child: Center(
                       
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      const Text("Hi, Kd",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        letterSpacing: 1.5,           
                      ),
                      ),
                    IconButton(onPressed: (){
                      
                    }, icon:const Icon(Icons.apple , size: 30)
                    ),
                    SizedBox(height: 15,),
                    ElevatedButton(onPressed: (){}, child:
                     Text("view here",style: TextStyle(
                      color: Colors.white,
                     ),),
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
               
                     ),
                    )
                  
                    
                    ],
                  ),
               
                ),
               
               ),
Container(
  height: 300,
  width: 300,
  margin:EdgeInsets.symmetric(horizontal: 20),
  decoration: BoxDecoration(
    color: Colors.green,
   borderRadius:BorderRadius.circular(20),
  ),
)
               
             ],
             


              
             )
           ),
         
        
       ),
       ),
    );
       
      
    
  }
}
