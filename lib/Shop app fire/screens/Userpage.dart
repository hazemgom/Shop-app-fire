import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last2/Shop%20app%20fire/Cubits/Cubit%20theme.dart';
import 'package:last2/Shop%20app%20fire/Cubits/state%20theme.dart';
import 'package:last2/Shop%20app%20fire/screens/Fav%20Full.dart';
import 'package:last2/Shop%20app%20fire/screens/Fav%20empty.dart';
import 'package:last2/Shop%20app%20fire/screens/Fav%20page.dart';
import 'package:last2/Store%20App/Cubits/Cubit%20Store.dart';

class Userpage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Themecubit(),
      child: BlocConsumer<Themecubit, Themestate>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: CustomScrollView(slivers: [
              SliverAppBar(
                elevation: 0,
                title: Text(' User Info',style: GoogleFonts.arimaMadurai(color: Colors.white,fontSize: 35),),
                expandedHeight: 200,
                pinned: true,
                centerTitle: true,
                backgroundColor:  Color(0xff2A5078),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                        height: 200,
                        decoration:
                            BoxDecoration(color: Color(0xffA7B6C8)),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                titles('User Bag'),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    splashColor: Theme.of(context).splashColor,
                                    child: ListTile(
                                      onTap: () {

                                        Navigator.push(context,
                                        MaterialPageRoute(builder: (context){
                                          return Favpage();
                                        }));
                                      },
                                      title: Text('Favourite',style: GoogleFonts.arimaMadurai(color: Colors.black87),),

                                      leading: Icon(Icons.favorite,color: Colors.red,),
                                    ),
                                  ),
                                ),
                                userlisttile(
                                  context,
                                  'Cart',
                                  '',
                                  Icons.add_shopping_cart,
                                ),
                              ],
                            ),
                          ),
                        )),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                        height: 300,
                        decoration:
                            BoxDecoration(color:  Color(0xffA7B6C8)),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  titles('User info'),
                                  userlisttile(
                                      context, 'Email', 'sub', Icons.email),
                                  userlisttile(
                                    context,
                                    'Phone',
                                    '012334',
                                    Icons.phone,
                                  ),
                                  userlisttile(
                                    context,
                                    'Shopping',
                                    'sub',
                                    Icons.local_shipping,
                                  ),
                                  userlisttile(
                                    context,
                                    'Watch',
                                    'sub',
                                    Icons.watch_later,
                                  ),
                                ],

                            ),
                          ),
                        )),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                        height: 200,
                        decoration:
                            BoxDecoration(color: Color(0xffA7B6C8)),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                titles('User Setting'),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    splashColor: Theme.of(context).splashColor,
                                    child: ListTile(
                                      onTap: () {
                                        Storecubit.get(context)
                                            .Changethemedata( );
                                      },
                                      title: Text('Theme',style: GoogleFonts.arimaMadurai(color: Colors.black87),),
                                      subtitle:
                                          Text('Pressed here to change Theme'),
                                      leading: Icon(Icons.dark_mode,color: Colors.black87,),
                                    ),
                                  ),
                                ),
                                userlisttile(
                                  context,
                                  'Login Out',
                                  'sub',
                                  Icons.exit_to_app,
                                ),
                              ],
                            ),
                          ),
                        )),
                  ),
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}

Widget titles(String text) {
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Text(
      text,
      style: GoogleFonts.arimaMadurai(fontWeight: FontWeight.bold, fontSize: 22,color: Colors.white),
    ),
  );
}

Widget userlisttile(
    BuildContext context, String title, String subtitle, IconData icon) {
  return Material(
    color: Colors.transparent,
    child: InkWell(
      splashColor: Theme.of(context).splashColor,
      child: ListTile(
        onTap: () {},
        title: Text(title,style: GoogleFonts.arimaMadurai(color: Colors.black87),),
        subtitle: Text(subtitle,style: GoogleFonts.arimaMadurai(color: Colors.grey),),
        leading: Icon(icon,color: Colors.black87,),
      ),
    ),
  );
}
