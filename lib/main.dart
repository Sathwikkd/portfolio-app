import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets/pages/drawer-menu.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
      
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

        appBar:  CupertinoNavigationBar(

          middle: Text("SATHWIK'S PORTFOLIO",style: TextStyle(fontSize: 22),),
          backgroundColor: Colors.green,

          leading: GestureDetector(onTap: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          child: Icon(CupertinoIcons.bars),
          ),
        ),
        drawer: DrawerMenuPage(),
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
                      const Text("WELCOME TO MY PORTFOLIO!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        letterSpacing: 1.5,           
                      ),
                      ),
                    IconButton(onPressed: (){
                      
                    }, icon:const Icon(Icons.apple , size: 35)
                    ),
                  
                   const  SizedBox(height: 15,),
                    // ElevatedButton(onPressed: (){}, child:
                    //   Text("view here",style: TextStyle(
                    //   color: Colors.white,
                    //  ),),
                    //  style: ElevatedButton.styleFrom(
                    //   backgroundColor: Colors.black,
               
                    //  ),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        ElevatedButton(onPressed: (){},
                         child:Text("Collab",style: TextStyle(
                          color: Colors.white,
                         ),),
                         style:ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                         ) ,),
                        //  SizedBox(width: 5,),
                       //  Icon(Icons.arrow_circle_up)

                      ],
                    ),
                     
                    
                  
                    
                    ],
                  ),
               
                ),
               
               ),
               SizedBox(width: 25,),
Container(
  height: 300,
  width: 300,
  margin:EdgeInsets.symmetric(horizontal: 20),
  decoration: BoxDecoration(
    color: Colors.green,
   borderRadius:BorderRadius.circular(20),
  ),

  child: const Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(
        child: Text("PROJECTS",style: TextStyle(fontSize: 20,
        fontWeight: FontWeight.bold),
        ), 
        ),
        Icon(Icons.work)
    ],
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

  child: const Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(
        child: Text("SKILLS",style: TextStyle(fontSize: 20,
        fontWeight: FontWeight.bold),
        ),
        ),
        Icon(Icons.construction_sharp)
    ],
  ),

),Container(
  height: 300,
  width: 300,
  margin:EdgeInsets.symmetric(horizontal: 20),
  decoration: BoxDecoration(
    color: Colors.green,
   borderRadius:BorderRadius.circular(20),
  ),

  child: const Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(
        child: Text("CONTACT",style: TextStyle(fontSize: 20,
        fontWeight: FontWeight.bold),
        ),
        
        ),
        Icon(Icons.contacts)
    ],
  ),

),

               
             ],
             


              
             ),
          
         
        
       ),
       ),

    );
  }
}
