import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last2/Bmi%20App/Bmi%20Result.dart';


class bmiscreen extends StatefulWidget {


  @override
  _bmiscreenState createState() => _bmiscreenState();
}

class _bmiscreenState extends State<bmiscreen> {
  bool ismale=true;
  double height=120;
  int age=20;
  int weight=50;
  int result=30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bmi',
        style: GoogleFonts.anticSlab(
          color: Colors.black87,
          fontSize: 30,
            fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          ismale=true;
                        });
                      },
                      child: Container( decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ismale?Colors.blue:Colors.grey
                      ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [

                              Text(
                                'Male',style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          ismale=false;
                        });
                      },
                      child: Expanded(

                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [


                                Text(
                                  'FeMale',style: TextStyle(
                                    color:ismale?Colors.grey:Colors.blue,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey
              ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'HEIGHT',style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${height.round()}',style: TextStyle(
                              color: Colors.black87,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          ),),
                          Text(
                            'CM',style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),),
                        ],
                      ),
                      Slider(
                          value: height,
                          min: 50,
                          max: 220,
                          onChanged: (value){
                            setState(() {
                              height=value;
                            });

                          })
                    ],
                  ),
                ),
              ),
            ),
          ),


          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey
                      ) ,
                      child: Column(
                        children: [
                          Text(
                            'AGE',style: TextStyle(
                              color: Colors.black54,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          ),),
                          Text(
                            '$age',style: TextStyle(
                              color: Colors.black54,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          ),),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(

                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.remove_rounded),),
                              SizedBox(width: 10,),
                              FloatingActionButton(

                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.add),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),

                  Expanded(
                    child: Container(
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey
                      ) ,
                      child: Column(
                        children: [
                          Text(
                            'WEIGHT',style: TextStyle(
                              color: Colors.black54,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          ),),
                          Text(
                            '$weight',style: TextStyle(
                              color: Colors.black54,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          ),),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(

                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.remove_rounded),),
                              SizedBox(width: 10,),
                              FloatingActionButton(

                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.add),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),


          Container(color: Colors.blue,width: double.infinity,

            child: MaterialButton(
              onPressed: (){
                double result =weight/height;
                print(result.round());
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>bmiresult(
                      age: age,
                      ismale: ismale,
                      result: weight+height.round(),
                    )),);
              } ,height: 70,
            child: Text('Result',
            style: GoogleFonts.archivoBlack(
              color: Colors.black87,
              fontSize: 20
            ),),),

          )
        ],
      ),
    );
  }
}
