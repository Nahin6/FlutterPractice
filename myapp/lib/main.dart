// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyWidget(),
  );
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 239, 237, 190),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 77, 67, 38),
          title: Center(child: Text('AppBar')),
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/imgs.png'),
                  radius: 50,
                ),
              ),
              Divider(
                height: 80,
                color: Color.fromARGB(255, 69, 1, 1),
              ),
              Text(
                "Name:",
                style: TextStyle(
                    fontSize: 30.0, color: Colors.redAccent, letterSpacing: 2),
              ),
              Text(
                "ABCD",
                style: TextStyle(
                  fontSize: 40.0,
                  color: const Color.fromARGB(255, 82, 218, 255),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "ID :",
                style: TextStyle(
                    fontFamily: AutofillHints.addressCityAndState,
                    fontSize: 30.0,
                    color: Colors.blue),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "$count",
                style: TextStyle(
                    fontFamily: AutofillHints.addressCityAndState,
                    fontSize: 30.0,
                    color: Colors.blue),
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.email,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    ":  data@gmail.com",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 14, 188, 20),
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      count = count + 1;
                    });
                  },
                  // ignore: sort_child_properties_last
                  child: Text(
                    'increase id',
                    style: TextStyle(color: Colors.amberAccent, fontSize: 20),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    disabledForegroundColor: Colors.red.withOpacity(0.38),
                  ),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      count = count - 1;
                    });
                  },
                  // ignore: sort_child_properties_last
                  child: Text(
                    'decrease id',
                    style: TextStyle(color: Colors.amberAccent, fontSize: 20),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    disabledForegroundColor: Colors.red.withOpacity(0.38),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
