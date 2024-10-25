import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:widgets/pages/resume.dart';


class DrawerMenuPage extends StatelessWidget {
  const DrawerMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
         const DrawerHeader(
            decoration:BoxDecoration(
              
              color: Colors.green,
            ) ,child: Text('Menu',style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home,size: 20,),
            title: Text('HOME',style: TextStyle(fontSize: 20),
            
            ),
            
           // subtitle: Text("go to home"),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 30,),
          ListTile(
            leading: Icon(CupertinoIcons.info_circle_fill,size: 20,),
            title: Text('ABOUT ME',style: TextStyle(fontSize: 20),
            ),

              onTap: (){
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 30,),

          ListTile(
            leading: Icon(Icons.construction_rounded,size: 20,),
            title: Text('SKILLS',style: TextStyle(fontSize: 20),),
              onTap: (){
              Navigator.pop(context);
            },
          ),

          SizedBox(height: 30,),

          ListTile(

            leading: Icon(Icons.work_rounded,size: 20,),
            title: Text('PROJECTS',style: TextStyle(fontSize: 20),),
              onTap: (){
              Navigator.pop(context);
            },
          ),


             SizedBox(height: 30,),

          ListTile(
            leading: Icon(CupertinoIcons.book_fill,size: 20,),
            title: Text('RESUME',style: TextStyle(fontSize: 20),),
              onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyResume()));
            },
            
          ),


                    SizedBox(height: 30,),

          ListTile(
            leading: Icon(Icons.contacts,size: 20,),
            title: Text('CONTACT',style: TextStyle(fontSize: 20),),
              onTap: (){
              Navigator.pop(context);
            },
          )





        ],
      ),
    );
  }
}