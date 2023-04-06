import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  static const String _title = 'Menu items';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
     // backgroundColor: Color(0xFF1E6A5A),
        body: SafeArea(
          child: Center(
            child: CheckboxWidget(),
          ),
        ),
      ),
    );
  }
}

class CheckboxWidget extends StatefulWidget {
  @override
  CheckboxWidgetState createState() => new CheckboxWidgetState();
}

class CheckboxWidgetState extends State<CheckboxWidget> {
  List<Map<String, dynamic>> options = [
    {'title': 'drinks', 'value': false},
    {'title': 'meals', 'value': false},
    {'title': 'biriyani', 'value': false},
    {'title': 'curry', 'value': false},
    {'title': 'gravy', 'value': false},



  ];

  getSelectedItems() {
    List<String> selectedItems = [];
    options.forEach((option) {
      if (option['value'] == true) {
        selectedItems.add(option['title']);
      }
    });
    // Printing all selected items on Terminal screen.
    print(selectedItems);
    // Here you will get all your selected Checkbox items.
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
    //     ElevatedButton(onPressed:(){
    //       // Navigator.push(context, MaterialPageRoute(builder: (context)=>confirm()));
    // },
    //       child: Text(
    //         "Get Selected Items",
    //         style: TextStyle(fontSize: 18),
    //       ),
    //
    //     ),
        Expanded(
          child: ListView.builder(
            itemCount: options.length,
            itemBuilder: (BuildContext context, int index) {
              return CheckboxListTile(
                title: Text(options[index]['title']),
                value: options[index]['value'],
                activeColor: Colors.pink,
                checkColor: Colors.white,
                onChanged: (bool? value) {
                  setState(() {
                    options[index]['value'] = value!;
                  });
                },
              );
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: ElevatedButton(
            onPressed: () {
              getSelectedItems();
            },
            child: Text(
              "Confirm",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    );

  }
}