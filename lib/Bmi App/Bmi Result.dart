import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class bmiresult extends StatelessWidget {
  final int result;
  final bool ismale;
  final int age;
  bmiresult({

    required this.result,
    required this.ismale,
    required this.age,

  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULT'),
      ),
      body: Center(
        child: Column( crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender: $ismale',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),),
            Text(
              'AGE: $age',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),),
            Text(
              'RESULT: $result',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),),
          ],
        ),
      ),
    );
  }
}
