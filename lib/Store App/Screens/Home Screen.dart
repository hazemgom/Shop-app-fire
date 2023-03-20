import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:last2/Store%20App/Screens/widget.dart';
import 'package:last2/Store%20App/Services/All%20Products.dart';
import 'package:last2/Store%20App/Services/Product%20Model.dart';

import '../Cubits/Cubit Store.dart';
import '../Cubits/Store state.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.cartArrowDown,
                color: Colors.black87,
              ))
        ],
        title: Text(
          'Products',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 65),
          child: FutureBuilder<List<ProductModel>>(
            future: AllProducts().getallproduct(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                print('dattttttttttta');
                List<ProductModel> products = snapshot.data!;
                return GridView.builder(
                  clipBehavior: Clip.none,
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 100,
                      childAspectRatio: 1.3),
                  itemBuilder: (context, index) {
                    return Castumcard(
                      product: products[index],
                    );
                  },
                );
              } else {
                return Center(child: Text('Errror'));
              }
            },
          )),
    );
  }
}
