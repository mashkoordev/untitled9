import 'package:flutter/material.dart';
import 'package:untitled9/screen_three.dart';

class ScreenTwo extends StatefulWidget {
  static const String id="screen_two";
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Naviogation Drawer"),
        backgroundColor: Color(0xff764abc),
      ),
      drawer:
       Drawer(
         child: ListView(
           children: [

             UserAccountsDrawerHeader(
                 decoration: BoxDecoration(

                   color: Color(0xff764abc),
                 ),
                 currentAccountPicture: CircleAvatar(
                   backgroundImage: NetworkImage("https://images.pexels.com/photos/18490340/pexels-photo-18490340/free-photo-of-tourist-running-on-the-beach-washed-by-the-sea.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                 ),
                 accountName: Text("asif"), accountEmail: Text("ASIFTECH@GMAIL.COM")),
             ListTile(
               leading: Icon(Icons.icecream),
               title: Text('page 1'),
               onTap: (){
                 Navigator.pushNamed(context, ScreenTwo.id);
               },
             ),

           ],
         ),
       )  ,
      );


  }
}
