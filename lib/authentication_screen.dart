import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({Key key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  TextStyle style = TextStyle(
      fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.black54);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
        onPressed: (null),
        child: Text(
          "Sign In",
          textAlign: TextAlign.center,
          style: style,
        ),
      ),
    );

    final signupButton = Material(
      textStyle: style,
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
        onPressed: (null),
        child: Text(
          "Sign Up",
          textAlign: TextAlign.center,
          style: style,
        ),
      ),
    );

    final emailField = TextField(
      style: style,
      obscureText: false,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Username",
          fillColor: Colors.yellowAccent,
          filled: true,
          enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(32.0), borderSide: BorderSide(color: Colors.red)),
          hintStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          )),
    );

    final passwordField = TextField(
      style: style,
      obscureText: true,
      //textAlign: TextAlign.center,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          //fillColor: Colors.yellowAccent,
          //filled: true,
          //enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(32.0), borderSide: BorderSide(color: Colors.red)),
          //hintStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          )),
    );

    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/FoodImageApp.jpg"),
                fit: BoxFit.cover)),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Center(
                    child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Spacer(flex: 1),
                                Text(
                                  "Demo App",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Spacer(flex: 1),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 15.0, right: 30.0, left: 30.0),
                                  child: SizedBox(child: emailField),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 15.0, right: 30.0, left: 30.0),
                                  child: SizedBox(child: passwordField),
                                ),
                              ],
                            )),
                        Flexible(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 15.0, right: 30.0, left: 30.0),
                                child: SizedBox(
                                  child: loginButton,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 15.0, right: 30.0, left: 30.0),
                                child: SizedBox(
                                  child: signupButton,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                )),
              ),
            ],
          ),
        ));
  }
}
