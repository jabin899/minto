import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskflutter/log.dart';
import 'package:taskflutter/menu.dart';


class Selection extends StatefulWidget {
  const Selection({Key? key}) : super(key: key);

  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select tables",style: TextStyle(color: Colors.black),),
        backgroundColor: Color(0xFF5F9EA0),
        centerTitle: true,
        actions: [
          IconButton(
            icon:Icon(Icons.logout),
            color: Colors.black, onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));
          },
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: currentindex,
      //   onTap: (newIndex){
      //     setState(() {
      //       currentindex=newIndex;
      //     });
      //   },
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //       Icons.home,
      //     ),
      //         label:"home",
      //       backgroundColor: Colors.black,),
      //     BottomNavigationBarItem(icon: Icon(
      //       Icons.currency_rupee_sharp,
      //     ),
      //         label:"pay"),
      //     BottomNavigationBarItem(icon: Icon(
      //       Icons.person,
      //     ),
      //         label:"prof"),
      //   ],
      // ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(height: 30,),
                InkWell(
                  onTap: () {
                    // getData();
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Menu()));

                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0,right: 10.0,top:120),
                    child: Container(
                      height: 120,
                      width: 120,
                      //working code to add item
                      child: Center(child: Text('table1')),
                      // decoration: new BoxDecoration(
                      //   image: new DecorationImage(image: new AssetImage('lib/assets/image/Onion-Dosa.jpg'),
                      // ),
                      color: Color(0xFF5F9EA0),

                    ),
                  ),
                ),


                SizedBox(height: 30,),
                InkWell(
                  onTap: () {
                    // getData();
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Menu()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0,right: 10.0,top:120),
                    child: Container(
                      child: Center(child: Text('table2')),

                      color: Color(0xFF5F9EA0),
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),

              ],

            ),
            Row(
              children: [
                SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                    // getData();
               Navigator.push(context,MaterialPageRoute(builder: (context)=>Menu()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0,right: 10.0,top:20),
                    child: Container(
                      child: Center(child: Text('table3')),

                      color: Color(0xFF5F9EA0),
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                    // getData();
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Menu()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0,right: 10.0,top:20),
                    child: Container(
                      child: Center(child: Text('table4')),

                      color: Color(0xFF5F9EA0),
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}