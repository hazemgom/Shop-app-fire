import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last2/Helpers/Text%20field%20Helper.dart';
import 'package:last2/Shop%20app%20fire/screens/Bottom%20Nav%20Page.dart';


import '../../Helpers/Button Helper.dart';
import 'RisterScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  GlobalKey Formkey=GlobalKey<FormState>();
  String ?password;
  String?email;

  @override

  Widget build(BuildContext context) {

        return Scaffold(
          backgroundColor: Color(0xffA7B6C8),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title:  Text(
              'LOGIN',
              style: GoogleFonts.architectsDaughter(
                  fontSize: 35,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold
              ),),
          ),

          body:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: Formkey,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(
                      '   Start Shopping',
                      style: GoogleFonts.arefRuqaa(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,

                          fontSize: 30),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Textfiledhelper(
                      hinttext: 'Email',
                      label: 'email',
                      ontap: (data) {
                        email = data;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Textfiledhelper(
                      hinttext: 'Password',
                      label: 'Password',
                      ontap: (data) {
                        password = data;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Buttonhelper(
                      title: 'LOGIN',
                      onchange: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Bottompage();
                        }));

                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'don\'t have an accont?',
                          style: GoogleFonts.arefRuqaaInk(
                              color: Colors.redAccent),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                    return RigsterScreen();
                                  }));
                            },
                            child: Text(
                              'Rigster',
                              style: GoogleFonts.anybody(
                                  color: Colors.green,
                                  fontSize: 20),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),



    );
  }
}
