import 'HomeModel.dart';

class HomeModel{

  bool?status;
  HomeDataModel ?dataModel;
  HomeModel({this.dataModel,this.status});
  HomeModel.fromJson(Map<String,dynamic>json){
    status=json['status'];
    dataModel=HomeDataModel.fromJson(json['data']);
  }

}
class HomeDataModel{
List<bannersmodel>banners=[];
List<productsmodel>products=[];
HomeDataModel.fromJson(Map<String,dynamic>json){
  json['banners'].forEach((element) {
    banners.add(element);
  });
  json['banners'].forEach((element) {
    products.add(element);
  });
}
}
class bannersmodel{
  int ?id;
  String ?image;
  bannersmodel({this.image,this.id});
   bannersmodel.fromJson(Map<String,dynamic>json){
     id=json['id'];
     image=json['image'];

   }
}
class productsmodel{
  int ?id;
  double ?price;
  double ?oldprice;
  String ? image;
  String ?name;
  productsmodel({this.image,
    this.id,this.price,
    this.oldprice,
  this.name});
  productsmodel.fromJson(Map<String,dynamic>json){
    id=json['id'];
    image=json['image'];
    price=json['price'];
    oldprice=json['old_price'];
    name=json['name'];


  }


}