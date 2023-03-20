import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:last2/Store%20App/Services/Product%20Model.dart';

class Updatapage extends StatelessWidget {
  late ProductModel product;
  String ?title,image,des;
  int? price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Updata Product',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (data){
              title=data;
            },
            decoration: InputDecoration(
                hintText: ' Name product',
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            onChanged: (data){
              des=data;
            },
            decoration: InputDecoration(
                hintText: ' Descripation',
                border: OutlineInputBorder(),
                contentPadding:
                EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(

            onChanged: (data){
              price=int.parse(data);
            },

            decoration: InputDecoration(

                hintText: ' Price',
                border: OutlineInputBorder(),
                contentPadding:
                EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            onChanged: (data){
              image=data;
            },
            decoration: InputDecoration(
                hintText: ' Image',
                border: OutlineInputBorder(),
                contentPadding:
                EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
          ),
          SizedBox(
            height: 70,
          ),

          Container(
            width: double.infinity,
            height: 30,
            decoration: BoxDecoration(

              color: Colors.teal

            ),
            child: MaterialButton(onPressed: (){},child:Text(
              'Updata ',
              style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),) ,),
          )
        ],
      ),
    );
  }
}
