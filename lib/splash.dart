// import 'dart:async';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'log.dart';
//
// class Splash extends StatefulWidget {
//   const Splash({Key? key}) : super(key: key);
//
//   @override
//   State<Splash> createState() => _SplashState();
// }
//
// class _SplashState extends State<Splash> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(
//         Duration(seconds: 5),
//             () =>
//             Navigator.pushReplacement(
//                 context, MaterialPageRoute(builder: (context) => LoginPage())));
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: lottie.asset()),
//     );
//   }
// }