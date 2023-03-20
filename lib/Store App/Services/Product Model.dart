class ProductModel{

  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
  final String catagory;
  final Rating rating;

  ProductModel({required this.id, required this.title, required this.price, required this.description,
    required this.image,required this.catagory,required this.rating});
  factory ProductModel.fromJson(jsondata){
    return ProductModel(id: jsondata['id'],
        title: jsondata['title'],
        price: jsondata['price'],
        description: jsondata['description'],
        image: jsondata['image'],
    catagory: jsondata['category'],
    rating: Rating.fromJson(jsondata['rating']));
    
  }
}
class Rating{
  final double rate;
  final double count;

  Rating({required this.rate, required this.count});
  factory Rating.fromJson(jsondata){
    return Rating(rate: jsondata['rate'], count: jsondata['count']);
  }

}