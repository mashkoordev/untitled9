import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://images.pexels.com/photos/15002293/pexels-photo-15002293/free-photo-of-corridor-in-a-museum.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
          ),
          title: Text(
            "MY APP"
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
                  labelText: "Email",
                  hintStyle: TextStyle(fontSize: 14,color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
