import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favempty extends StatelessWidget {
  const Favempty({Key? key}) : super(key: key);

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
                'Empty Favourit Products ',style: TextStyle(
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
                  child: MaterialButton(onPressed: (){},child: Text('Start Shopping',style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),))
            ],
          ),
        ),
      ),
    );
  }
}
