import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';





class businessscreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder:(context,index)=> Padding(
          padding: const EdgeInsets.all(20),
          child: Row(

            children: [
              Container(
                height: 120,
                width: 120,


                decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(10) ,
                    image:DecorationImage(image:
                    NetworkImage('https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/311126329_679'
                        '974550134851_8334787998232486755_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=VWJuXWf8YOcAX9'
                        'S2BdG&_nc_ht=scontent.fcai20-3.fna&oh=00_AT9QV0xwx27RLwTQFe5Nbsm45D8U13XLka2IPHqi_XxkSg&oe=6351B1A4'),
                      fit: BoxFit.cover,
                    )

                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: Container(
                  height: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          'Titles',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                        ),
                      ),
                      SizedBox(height: 15,
                      ),
                      Text(
                          '12-10-2020'
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),

        separatorBuilder: (context,index)=> Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20.0,
          ),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
        ),


        itemCount: 10)  ;





  }
}
