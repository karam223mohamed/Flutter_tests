import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
          CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/107814416?s=400&u=7ee585ce09167881f4cdc40f196e991198bed142&v=4'),
          ),
            SizedBox(
              width: 20.0,
            ),
            Text(
                'Chats',
            style: TextStyle(
              color: Colors.black
            ),),
        ],),
        titleSpacing: 16,
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 16.0,
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.camera_alt,
                size: 18.0,
                color: Colors.black,),
              )),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 16.0,
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.edit,
                  size: 18.0,
                  color: Colors.black,),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(5.0),
                color: Colors.grey[200],
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.search,)),
                  Text('search')
              ],),
            ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index)=>buildStoryItem(),
                 separatorBuilder: (context,index)=>SizedBox(
                   width: 20.0,
                 ),
                 itemCount: 10,
                  shrinkWrap: true,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                    itemBuilder: (context,index)=>buildChatItem()
                  , separatorBuilder:(context,index)=>SizedBox(
                height: 20.0,
              )
                  , itemCount: 20
                ,shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),)


          ],),
        ),
      ),
    );
  }
 Widget buildStoryItem()=>  Container(
   width:50.0 ,
   child: Column(
     children: [
       Stack(
         alignment: AlignmentDirectional.bottomEnd,
         children: [
           CircleAvatar(
             radius: 25.0,
             backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/107814416?s=400&u=7ee585ce09167881f4cdc40f196e991198bed142&v=4'),
           ),
           Padding(
             padding: const EdgeInsetsDirectional.only(
                 bottom: 3.0,
                 end: 3.0
             ),
             child: CircleAvatar(
               radius: 5.0,
               backgroundColor: Colors.green,
             ),
           ),
         ],
       ),
       SizedBox(
         height: 3.0,
       ),
       Text('Karam Mohamed',
           maxLines: 2,
           overflow:TextOverflow.ellipsis),

     ],),
 );
  Widget buildChatItem()=>  Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 25.0,
            backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/107814416?s=400&u=7ee585ce09167881f4cdc40f196e991198bed142&v=4'),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0
            ),
            child: CircleAvatar(
              radius: 5.0,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      SizedBox(
        width: 10.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Karam Mohamed',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 4.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Text('hello karam how are you?!',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric (horizontal:5.0),
                  child: Container(
                    width: 4.0,
                    height: 4.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Text('03:00 pm'),
              ],
            ),
          ],
        ),
      )
    ],
  );


}
