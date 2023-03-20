import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class massengerscreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.black87,
        title: const Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/279266684_577708613694779_4518186958999191197_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=W9IovmHMeSQAX99YyNT&_nc_ht=scontent.fcai20-3.fna&oh=00_AT8oOeTapJX_paR5hq9vEXX9wiWs5uAQ55dWSrrIPbZzSg&oe=62DC77C2'),
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              'Chats',
              style: TextStyle(
                  color: Colors.white
              ),),

          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon:CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,

              child: Icon (Icons.camera_alt_rounded))),
          IconButton(onPressed: (){}, icon:CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,

              child: Icon (Icons.edit))),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black45

              ),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 7,
                  ),
                  Text('Search'),

                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/279266684_577708613694779_4518186958999191197_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=W9IovmHMeSQAX99YyNT&_nc_ht=scontent.fcai20-3.fna&oh=00_AT8oOeTapJX_paR5hq9vEXX9wiWs5uAQ55dWSrrIPbZzSg&oe=62DC77C2'),
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        Text('Hazem Gomaa flasha',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/279266684_577708613694779_4518186958999191197_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=W9IovmHMeSQAX99YyNT&_nc_ht=scontent.fcai20-3.fna&oh=00_AT8oOeTapJX_paR5hq9vEXX9wiWs5uAQ55dWSrrIPbZzSg&oe=62DC77C2'),
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        Text('Hazem Gomaa flasha',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/279266684_577708613694779_4518186958999191197_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=W9IovmHMeSQAX99YyNT&_nc_ht=scontent.fcai20-3.fna&oh=00_AT8oOeTapJX_paR5hq9vEXX9wiWs5uAQ55dWSrrIPbZzSg&oe=62DC77C2'),
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        Text('Hazem Gomaa flasha',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/279266684_577708613694779_4518186958999191197_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=W9IovmHMeSQAX99YyNT&_nc_ht=scontent.fcai20-3.fna&oh=00_AT8oOeTapJX_paR5hq9vEXX9wiWs5uAQ55dWSrrIPbZzSg&oe=62DC77C2'),
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        Text('Hazem Gomaa flasha',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/279266684_577708613694779_4518186958999191197_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=W9IovmHMeSQAX99YyNT&_nc_ht=scontent.fcai20-3.fna&oh=00_AT8oOeTapJX_paR5hq9vEXX9wiWs5uAQ55dWSrrIPbZzSg&oe=62DC77C2'),
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        Text('Hazem Gomaa flasha',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/279266684_577708613694779_4518186958999191197_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=W9IovmHMeSQAX99YyNT&_nc_ht=scontent.fcai20-3.fna&oh=00_AT8oOeTapJX_paR5hq9vEXX9wiWs5uAQ55dWSrrIPbZzSg&oe=62DC77C2'),
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        Text('Hazem Gomaa flasha',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/279266684_577708613694779_4518186958999191197_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=W9IovmHMeSQAX99YyNT&_nc_ht=scontent.fcai20-3.fna&oh=00_AT8oOeTapJX_paR5hq9vEXX9wiWs5uAQ55dWSrrIPbZzSg&oe=62DC77C2'),
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        Text('Hazem Gomaa flasha',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/279266684_577708613694779_4518186958999191197_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=W9IovmHMeSQAX99YyNT&_nc_ht=scontent.fcai20-3.fna&oh=00_AT8oOeTapJX_paR5hq9vEXX9wiWs5uAQ55dWSrrIPbZzSg&oe=62DC77C2'),
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        Text('Hazem Gomaa flasha',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),





                ],

              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(

                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/279766606_538547947782949_8525678464695207488_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=OdG11L7UwLcAX_JJc7d&tn=PbjGroW49XhHcHaC&_nc_ht=scontent.fcai20-3.fna&oh=00_AT_YyomNqN-vGoM9lv6gxRv3kZpN2anrNQJyGjVO-GMCwg&oe=62DCA2A4'),

                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text('Zakzoka',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,),
                        SizedBox(
                          width: 20,
                        ),
                        Text(''
                            '12:24  pm     monday' , style: TextStyle(
                            fontWeight: FontWeight.w700
                        ),)

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/279766606_538547947782949_8525678464695207488_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=OdG11L7UwLcAX_JJc7d&tn=PbjGroW49XhHcHaC&_nc_ht=scontent.fcai20-3.fna&oh=00_AT_YyomNqN-vGoM9lv6gxRv3kZpN2anrNQJyGjVO-GMCwg&oe=62DCA2A4'),

                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text('Zakzoka',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,),
                        SizedBox(
                          width: 20,
                        ),
                        Text(''
                            '12:24  pm     monday' , style: TextStyle(
                            fontWeight: FontWeight.w700
                        ),)

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/279766606_538547947782949_8525678464695207488_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=OdG11L7UwLcAX_JJc7d&tn=PbjGroW49XhHcHaC&_nc_ht=scontent.fcai20-3.fna&oh=00_AT_YyomNqN-vGoM9lv6gxRv3kZpN2anrNQJyGjVO-GMCwg&oe=62DCA2A4'),

                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text('Zakzoka',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,),
                        SizedBox(
                          width: 20,
                        ),
                        Text(''
                            '12:24  pm     monday' , style: TextStyle(
                            fontWeight: FontWeight.w700
                        ),)

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/279766606_538547947782949_8525678464695207488_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=OdG11L7UwLcAX_JJc7d&tn=PbjGroW49XhHcHaC&_nc_ht=scontent.fcai20-3.fna&oh=00_AT_YyomNqN-vGoM9lv6gxRv3kZpN2anrNQJyGjVO-GMCwg&oe=62DCA2A4'),

                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text('Zakzoka',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,),
                        SizedBox(
                          width: 20,
                        ),
                        Text(''
                            '12:24  pm     monday' , style: TextStyle(
                            fontWeight: FontWeight.w700
                        ),)

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/279766606_538547947782949_8525678464695207488_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=OdG11L7UwLcAX_JJc7d&tn=PbjGroW49XhHcHaC&_nc_ht=scontent.fcai20-3.fna&oh=00_AT_YyomNqN-vGoM9lv6gxRv3kZpN2anrNQJyGjVO-GMCwg&oe=62DCA2A4'),

                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text('Zakzoka',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,),
                        SizedBox(
                          width: 20,
                        ),
                        Text(''
                            '12:24  pm     monday' , style: TextStyle(
                            fontWeight: FontWeight.w700
                        ),)

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/279766606_538547947782949_8525678464695207488_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=OdG11L7UwLcAX_JJc7d&tn=PbjGroW49XhHcHaC&_nc_ht=scontent.fcai20-3.fna&oh=00_AT_YyomNqN-vGoM9lv6gxRv3kZpN2anrNQJyGjVO-GMCwg&oe=62DCA2A4'),

                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text('Zakzoka',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,),
                        SizedBox(
                          width: 20,
                        ),
                        Text(''
                            '12:24  pm     monday' , style: TextStyle(
                            fontWeight: FontWeight.w700
                        ),)

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/279766606_538547947782949_8525678464695207488_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=OdG11L7UwLcAX_JJc7d&tn=PbjGroW49XhHcHaC&_nc_ht=scontent.fcai20-3.fna&oh=00_AT_YyomNqN-vGoM9lv6gxRv3kZpN2anrNQJyGjVO-GMCwg&oe=62DCA2A4'),

                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text('Zakzoka',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,),
                        SizedBox(
                          width: 20,
                        ),
                        Text(''
                            '12:24  pm     monday' , style: TextStyle(
                            fontWeight: FontWeight.w700
                        ),)

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/279766606_538547947782949_8525678464695207488_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=OdG11L7UwLcAX_JJc7d&tn=PbjGroW49XhHcHaC&_nc_ht=scontent.fcai20-3.fna&oh=00_AT_YyomNqN-vGoM9lv6gxRv3kZpN2anrNQJyGjVO-GMCwg&oe=62DCA2A4'),

                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text('Zakzoka',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,),
                        SizedBox(
                          width: 20,
                        ),
                        Text(''
                            '12:24  pm     monday' , style: TextStyle(
                            fontWeight: FontWeight.w700
                        ),)

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/279766606_538547947782949_8525678464695207488_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=OdG11L7UwLcAX_JJc7d&tn=PbjGroW49XhHcHaC&_nc_ht=scontent.fcai20-3.fna&oh=00_AT_YyomNqN-vGoM9lv6gxRv3kZpN2anrNQJyGjVO-GMCwg&oe=62DCA2A4'),

                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text('Zakzoka',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,),
                        SizedBox(
                          width: 20,
                        ),
                        Text(''
                            '12:24  pm     monday' , style: TextStyle(
                            fontWeight: FontWeight.w700
                        ),)

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/279766606_538547947782949_8525678464695207488_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=OdG11L7UwLcAX_JJc7d&tn=PbjGroW49XhHcHaC&_nc_ht=scontent.fcai20-3.fna&oh=00_AT_YyomNqN-vGoM9lv6gxRv3kZpN2anrNQJyGjVO-GMCwg&oe=62DCA2A4'),

                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text('Zakzoka',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,),
                        SizedBox(
                          width: 20,
                        ),
                        Text(''
                            '12:24  pm     monday' , style: TextStyle(
                            fontWeight: FontWeight.w700
                        ),)

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/279766606_538547947782949_8525678464695207488_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=OdG11L7UwLcAX_JJc7d&tn=PbjGroW49XhHcHaC&_nc_ht=scontent.fcai20-3.fna&oh=00_AT_YyomNqN-vGoM9lv6gxRv3kZpN2anrNQJyGjVO-GMCwg&oe=62DCA2A4'),

                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text('Zakzoka',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,),
                        SizedBox(
                          width: 20,
                        ),
                        Text(''
                            '12:24  pm     monday' , style: TextStyle(
                            fontWeight: FontWeight.w700
                        ),)

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
