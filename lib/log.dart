import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:taskflutter/register.dart';
import 'package:taskflutter/selection.dart';
import 'package:taskflutter/tableselection.dart';

import 'const.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var username = TextEditingController();
  var password = TextEditingController();
  Future<void> getData() async {
    var data = {
      "username":username.text,
      "password":password.text,
    };

    // var response = await post(Uri.parse('${Con.url}log.php'),body: data);
    // var res = jsonDecode(response.body);
    // print(res);
    //
    // if(response.statusCode==200){
    //   if(res['message']=='logged in'){
    //     Fluttertoast.showToast(msg: 'Successfully Login...');
    //     Navigator.push(context, MaterialPageRoute(
    //       builder: (context) {
    //         return MyApp();
    //       },
    //     ));
    //   }
    // }
    // else {
    //   Fluttertoast.showToast(msg: 'Something went wrong!');
    // }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("asset/Restaurant Menu Background Material.jpeg"),
    fit: BoxFit.cover,
    ),
    ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sign In'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22,right: 28,left: 28,bottom: 10),
                child: TextFormField(
                  controller: username,
                  decoration: InputDecoration(
                    hintText: 'Username',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 28,left: 28,bottom: 10),
                child: TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
              ),

              SizedBox(height: 10,),
              InkWell(
                onTap: () {
                  getData();
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Selection()));
                },
                child: Container(
                  child: Center(child: Text('Login')),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFF5F9EA0),
                  ),
                  height: 50,
                  width: 300,

                ),
              ),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Registern()));
              }, child: Text("Don't have any account please login her!"))
            ],
          ),
        ),
      );
  }
}

