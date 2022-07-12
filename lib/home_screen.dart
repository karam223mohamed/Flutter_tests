import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Icon(
          Icons.menu,
        ),
        title: Text(
        'first app'
      ),
        actions: [
          IconButton(
              onPressed: (){print('karam');},
              icon: Icon(Icons.notification_important,)),

        ],
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image(
                      image: NetworkImage('https://thumbs.dreamstime.com/b/spring-flowers-blue-crocuses-drops-water-backgro-background-tracks-rain-113784722.jpg'),
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,),
                  Container(
                    color:Colors.black.withOpacity(0.2),
                    width: 200.0,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 10.0,
                    ),
                    child: Text('Flower',
                    style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white),),
                  )
                ],
              ),
            ),
          ),
        ],
      ),

        );



  }



}