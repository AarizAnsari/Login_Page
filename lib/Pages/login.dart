import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:untitled4/Pages/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.jpg"),
                  fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 80, 15, 10),
              child: Column(
                children: [
                  TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),

                    decoration: InputDecoration(
                      hintText: "   Email",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 5.0),
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 5.0),
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                    ),
                    cursorColor: Colors.white,
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                   obscureText: true,
                    decoration: InputDecoration(
                      hintText: "   Password",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 5.0),
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 5.0),
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                    ),
                    cursorColor: Colors.white,
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 250,
                    width: 250,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                      },
                      child: LoadingIndicator(
                        indicatorType: Indicator.orbit, /// Required, The loading type of the widget
                        colors: [Colors.deepOrange,Colors.yellow],
                      ),
                    ),
                  ),
                  Text("Tap to login",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}
