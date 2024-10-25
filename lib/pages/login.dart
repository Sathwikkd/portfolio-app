import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:widgets/main.dart';
void main(){
  runApp(MyLogin());
}

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {

  final String Username = 'Sathwik';
  final String Password = 'sathwik123';

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    
    return  Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Padding(padding: 
        EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Login",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
             SizedBox(height: 30,),
            TextField(
              controller: _usernameController,
              
             style: TextStyle(color: Colors.white),
             decoration: InputDecoration(
              filled: true,
              fillColor: Colors.black,
              
              hintText: "Username",
              hintStyle: TextStyle(color: Colors.white,fontSize: 20),
              prefixIcon: Icon(Icons.person_2_outlined,color: Colors.white,),
             border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
             ),
             ),
            ),

            const SizedBox(height: 30,),
            TextField(
              cursorColor: Colors.white,
              controller: _passwordController,
              obscureText: true,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                
                filled: true,
                fillColor: Colors.black,
                hintText: "Password",
                
                hintStyle: TextStyle(color: Colors.white,fontSize: 20),
                prefixIcon: Icon(Icons.lock,color: Colors.white,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                )
              ),
            ),
            SizedBox(height: 40,),
            
          ElevatedButton(onPressed:
           (){
            if(_usernameController.text==Username && _passwordController.text==Password){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage()),);

            }else{
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('invalid username or password!!'),
                duration: Duration(milliseconds: 500),
                ),
              );
            }
           },
           style:ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
           ),
            child: Text("Login",style: TextStyle(color: Colors.white),
            )),

            SizedBox(height: 20,),

            TextButton(onPressed:(){}
            , child: Text('forgot password?'))

          ],
        ),
        ),
      ),
    );
  }
}