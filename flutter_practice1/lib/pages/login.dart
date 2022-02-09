import 'package:flutter/material.dart';
import 'package:flutter_practice1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String myName = "";
  bool changedButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color.fromRGBO(255, 255, 255, 1),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Image.asset("res/images/login_bg.jpg", fit: BoxFit.cover),
            SizedBox(
              height: 20,
            ),
            Text("WELCOME $myName".toUpperCase(),
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.red.shade800)),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Your Username...",
                        labelText: "Username"),
                    onChanged: (value) {
                      myName = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Your Password...",
                        labelText: "Password"),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changedButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: changedButton ? 50 : 150,
                      alignment: Alignment.center,
                      child: changedButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changedButton ? 50 : 10),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )));
  }
}
