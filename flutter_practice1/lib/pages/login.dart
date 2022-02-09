import 'package:flutter/material.dart';
import 'package:flutter_practice1/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color.fromRGBO(255, 255, 255, 1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("res/images/login_bg.jpg", fit: BoxFit.cover),
              SizedBox(height: 20,),
              Text("WELCOME",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.red.shade800)),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Your Username...",
                      labelText: "Username"
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Your Password...",
                        labelText: "Password"
                    ),
                  ),
                  SizedBox(height: 40,),
                  ElevatedButton(onPressed: ()=>{
                    Navigator.pushNamed(context, MyRoutes.homeRoute)
                  }, child: Text("LOGIN"),
                    style: TextButton.styleFrom(
                      minimumSize: Size(150, 40)
                    ),
                  )
                ],),
              )

            ],
          )
        )
    );
  }
}
