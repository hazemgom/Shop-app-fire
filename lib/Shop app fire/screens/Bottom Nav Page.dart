import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:last2/Shop%20app%20fire/screens/Cart%20Page.dart';
import 'package:last2/Shop%20app%20fire/screens/Feeds%20page.dart';
import 'package:last2/Shop%20app%20fire/screens/Search%20page.dart';



import 'Home page.dart';
import 'Userpage.dart';

class Bottompage extends StatefulWidget {
  const Bottompage({Key? key}) : super(key: key);

  @override
  State<Bottompage> createState() => _HomepageState();
}

class _HomepageState extends State<Bottompage> {
  List Pages=[
    Homepage(),
    Feedspage(),
    Searchpage(),
    Cartpage(),
    Userpage(),



  ];
  int current=0;
  void Selectpage(int index){

  setState(() {
    current=index;
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Pages[current],
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 1)
            )
          ),
          child: BottomNavigationBar(

            backgroundColor: Colors.deepPurpleAccent,
            onTap: Selectpage,
            selectedItemColor: Colors.green,
           unselectedItemColor: Colors.black87,
            currentIndex: current,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',tooltip: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.rss_feed_sharp),label: 'Feeds',tooltip: 'Feeds'),
              BottomNavigationBarItem(icon: Icon(null),label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.card_travel),label: 'Cart',tooltip: 'Cart'),
              BottomNavigationBarItem(icon: Icon(Icons.person),label: 'User info',tooltip: 'User'),
            ],
          ),
        ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        elevation: 0,
        child: Icon(Icons.search),
        onPressed: (){

     setState(() {
       current=2;
     });
        },
      ),

    );
  }
}
