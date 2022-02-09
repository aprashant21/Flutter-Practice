import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
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
                  decoration: InputDecoration(
                      hintText: "Enter Your Password...",
                      labelText: "Password"
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: ()=>{
                  print("Button CLICKED")
                }, child: Text("LOGIN"),
                   style: TextButton.styleFrom(),
                )
              ],),
            )

          ],
        ));
  }
}
