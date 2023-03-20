import 'package:flutter/cupertino.dart';
import 'package:last2/Shop%20app%20fire/Cubits/Product%20Bloc.dart';
import 'package:last2/Shop%20app%20fire/Models/Get%20HomeModel.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();

}

class _TestState extends State<Test> {
  @override
 void initState() {
    print('go');
    Productcubit();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
