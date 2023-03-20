import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:last2/Store%20App/Cubits/Cubit%20Store.dart';
import 'package:last2/Store%20App/Cubits/Store%20state.dart';
import 'package:last2/Store%20App/Screens/Updatapoduct%20page.dart';
import 'package:last2/Store%20App/Services/Product%20Model.dart';

class Castumcard extends StatelessWidget {
  Castumcard({required this.product});

  ProductModel product;

  @override
  Widget build(BuildContext context) {

  return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 20, spreadRadius: 0)
          ]),
          height: 120,
          width: 200,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(

                    product
                        .title
                        .substring(0, 6),
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r'$' '  ${product.price.toString()}',
                        style: TextStyle(color: Colors.grey),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            right: 60,
            top: -60,
            child: Image.network(
              product.image,
              height: 100,
              width: 100,
            )
        )
      ]);


  }
}

