import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:untitled4/Pages/login.dart';

class Loader extends StatefulWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  
  void ChangePage() async{
    await Future.delayed(Duration(milliseconds: 3500));
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
  }

  @override
  void initState() {
    ChangePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 80,
            width: 80,
            color: Colors.black,
            child: LoadingIndicator(
              indicatorType: Indicator.ballTrianglePathColoredFilled, /// Required, The loading type of the widget
              colors: [Colors.deepOrange,Colors.yellow,Colors.blue],       ///  The color collections
            ),
          ),
        ),
      ),
    );
  }
}
