import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favfull extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          margin: EdgeInsets.only(bottom: 60),
          child: GridView.builder(
            clipBehavior: Clip.none,
            itemCount: 15,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 0,
                childAspectRatio: 4),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 20,left: 8,right: 8),
                child: Container(
                  height: 100,

                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:  Color(0xffA7B6C8)),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://thumbs.dreamstime.com/z/empty-shopping-11978182.jpg'),
                              fit: BoxFit.fill,
                            )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('prrrrrrrrrrrroduct'),
                              SizedBox(
                                width: 220,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.delete_rounded,
                                  color: Colors.red,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text('price'),
                              SizedBox(width: 10,),
                              Text(r'230$'),
                            ],
                          ),

                        ],
                      )
                    ],
                  ),
                ),
              );
            },

          ),
        ));




  }
}
