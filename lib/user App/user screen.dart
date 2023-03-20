import 'package:flutter/material.dart';
class usermodel{
  final int id;
  final String name;
  final String phone;
  usermodel({
    required this.id,
     required this.name,
    required this.phone,
  });
}
class userscreen extends StatelessWidget {

  List<usermodel> users=[
    usermodel(
        id: 1,
        name: 'zoma',
        phone: '356782783267'
    ),
    usermodel(
        id: 2,
        name: 'zakzoka',
        phone: '356782783267'
    ),
    usermodel(
        id: 3,
        name: 'halima',
        phone: '356782783267'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar (
          title: Text('Users'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index)=>buildUserItem(users[index]),
            separatorBuilder: (context,index)=>Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            ),
            itemCount: users.length)


    );

  }
  Widget buildUserItem(usermodel user)=> Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: Text(
            '${user.id}',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),),

        ),
        SizedBox(width: 15,),
        Column(mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${user.name}',style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            Text(
                '${user.phone}',style: TextStyle(
              color: Colors.blueGrey,

              fontSize: 15,
            ))
          ],
        )
      ],
    ),
  );
}
