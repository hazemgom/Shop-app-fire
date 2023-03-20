import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:last2/Shop%20app%20fire/screens/Feed%20Products.dart';

import 'Feeds page.dart';

class Cartempty extends StatelessWidget {
  const Cartempty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(

            color:Colors.black87
        ),
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/th.jfif',width: 200,height: 200,),
              SizedBox(height: 40,),
              Text(
                  'Empty Start in Shopping ',style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 40,),
              Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal
                  ),
                  child: MaterialButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Feedspage();
                    }));
                  },child: Text('Start Shopping',style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),))
            ],
          ),
        ),
      ),
    );
  }
}
