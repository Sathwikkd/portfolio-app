import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyResume extends StatelessWidget {
  const MyResume({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RESUME'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.black,
      body:  Padding(padding: 
      EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Padding(
              padding:  EdgeInsets.only(left: 28),
              child:  Text("SATHWIK'S RESUME",style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green),
               
                ),

                

                
            ),
          
          
              SizedBox(height: 20),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.green,width: 4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 3,
                      offset: Offset(5, 5)
                    )
                  ]
                ),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child:Image.asset('lib/assets/resume.jpg',
                  fit: BoxFit.cover,
                  ),
                  

                ),

                

             //   padding: EdgeInsets.all(10),
              ),
              SizedBox(height: 20,),
             // ElevatedButton.icon(onPressed: (){},icon: Icon(CupertinoIcons.download_circle, label: Text(data))),
ElevatedButton.icon(onPressed: () {}, icon: Icon(CupertinoIcons.download_circle,color: Colors.green,),
label: Text("download",style: TextStyle(color: Colors.green),)),
  ],


        ),
      ),
      )
      
    );
  }
}