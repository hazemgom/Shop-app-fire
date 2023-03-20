import 'package:flutter_bloc/flutter_bloc.dart';

import '../Data Api/Wether Model.dart';
import '../Data Api/get api.dart';
import 'Weather State.dart';

class Weathercubit extends Cubit<Weatherstate>{
  Weathercubit() : super(Weatherintial());
  WetherModel ?wethermodel;
  String ?cityname;
  WetherApi service=WetherApi();

  void getweather({required String cityname})async{

    emit(Weatherloading());
    try {

    wethermodel= (await service.Getwhether(Cityname: cityname)) as WetherModel?;

     emit(Weathersucess());


    }on Exception catch(e){
      emit(Weathererror());

    }
    }

  }



