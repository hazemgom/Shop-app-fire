

import 'package:flutter/cupertino.dart';

import 'Wether Model.dart';

class Increment extends ChangeNotifier{




  set incr(int x){
    x--;

    notifyListeners();
  }
  WetherModel ?get ;
}