import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';


class DrawerMenuPage extends StatelessWidget {
  const DrawerMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
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
            leading: Icon(CupertinoIcons.home),
            title: Text('HOME',style: TextStyle(fontSize: 22),),
            onTap: (){},
          ),
          SizedBox(height: 30,),
          ListTile(
            leading: Icon(CupertinoIcons.info_circle_fill),
            title: Text('ABOUT ME',style: TextStyle(fontSize: 22),),
          ),
          SizedBox(height: 30,),

          ListTile(
            leading: Icon(Icons.construction_rounded),
            title: Text('SKILLS',style: TextStyle(fontSize: 22),),
          ),

          SizedBox(height: 30,),

          ListTile(

            leading: Icon(Icons.work_rounded),
            title: Text('PROJECTS',style: TextStyle(fontSize: 22),),
          ),
                    SizedBox(height: 30,),

          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('CONTACT',style: TextStyle(fontSize: 22),),
          )





        ],
      ),
    );
  }
}