import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/ui/screens/home.dart';

class Splash extends StatefulWidget {


  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 2),()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>Home())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x7E99FC).withAlpha(500),
 body: Container(
   height: MediaQuery.of(context).size.height,
   width:MediaQuery.of(context).size.width,
   child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Spacer(
      ),
       Center(child: Image.asset('images/splash_image.png',fit: BoxFit.cover) ,
       ),
      Spacer(
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text("Aviato",style: TextStyle(color: Colors.white),)),
      ),
     ],
   ),
 ),    

    );
  }
}