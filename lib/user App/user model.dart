import 'dart:html';

class usermodel{
  int ?id;
  String ?name,phone,email;
  usermodel({
    this.id,
    this.email,
    this.name,
    this.phone,


  });
  tojson(){
    return{
      name:name,
      id:id,
      phone:phone,
      email:email
    };
  }
  usermodel.fromjson(Map<String,dynamic> map){

    id=map[id];
    name=map[name];
    phone=map[phone];
    email=map[email];


  }
}