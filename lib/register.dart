import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:functional/not.dart';
import 'package:http/http.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'const.dart';
import 'log.dart';
// import 'connection.dart';
// import 'const.dart';
// import 'loginfun.dart';

class Registern extends StatefulWidget {
  const Registern({Key? key}) : super(key: key);

  @override
  State<Registern> createState() => _RegisterState();
}

class _RegisterState extends State<Registern> {
  var name = TextEditingController();
  var email = TextEditingController();
  var mobile = TextEditingController();
  var username = TextEditingController();
  var password = TextEditingController();

  Future<void> getData() async {
    var data = {
      "name":name.text,
      "email":email.text,
      "mobile":mobile.text,
      "username":username.text,
      "password":password.text,

    };
    var response = await post(Uri.parse('${Con.url}reg.php'),body: data);
    print(response.body);
    if(response.statusCode==200){
      var res = jsonDecode(response.body)["message"];
      if(res=='added'){
        const snackBar = SnackBar(
          content: Text('Successfully Registered'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        //
        Fluttertoast.showToast(msg:"successfully registered");
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return LoginPage();
          },
        ));
      }

    }
    else {
      // Fluttertoast.showToast(msg: 'Something went wrong!');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/Restaurant Menu Background Material.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                children: [

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Center(
                  child: Text(
                    'Register',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: name,
                decoration: InputDecoration(border: OutlineInputBorder(),
                  hintText: 'name',
                  labelText: 'Enter your name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(border: OutlineInputBorder(),
                  hintText: 'email',
                  labelText: 'Enter your email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: mobile,
                decoration: InputDecoration(border: OutlineInputBorder(),
                  hintText: 'mobile',
                  labelText: 'Enter your mobile',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: username,
                decoration: InputDecoration(border: OutlineInputBorder(),
                  hintText: 'username',
                  labelText: 'Enter your username',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: password,
                decoration: InputDecoration(border: OutlineInputBorder(),
                  hintText: 'Password',
                  labelText: 'Enter your password',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                getData();
              },
              child: Container(
                width: 50,
                height: 40,
                child: Center(
                  child: Text(
                    'Register',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(50)),
              ),
            )
          ],
        ),
      ),
              ),
    ],
    ),
    );
  }
}
