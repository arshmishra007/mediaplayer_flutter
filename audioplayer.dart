import 'package:audioplayers/audio_cache.dart';

import 'package:flutter/material.dart';


var audioPlayer = AudioPlayer();
int result;


AudioPlayer()
{ 
 
 
   play() async {
    result = await audioPlayer.play('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
    if (result == 1) {
      // success
     }
   }
 pause() async
 {
    result = await audioPlayer.pause();
 }
 refresh() async
 {
   result = await audioPlayer.stop();
 }
   


  


  var body = Container(
    height: double.infinity,
    width: double.infinity,
    color: Colors.pink[300],

    child: Column(children: <Widget>[
      Container(height: 200,
      width: 200,
      
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(image:
       DecorationImage(image:
        NetworkImage('https://m.media-amazon.com/images/I/81PPDaaySeL._SS500_.jpg')),
        
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Colors.black45,width:5)),
        
        ),

      Container(
        margin: EdgeInsets.only(bottom: 10,top: 20),
        child: Text('Listen Now!',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.black),),
      ),

      Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(icon: Icon(Icons.play_arrow), onPressed:play),
            IconButton(icon: Icon(Icons.pause), onPressed:pause),
            IconButton(icon: Icon(Icons.refresh), onPressed:refresh ),
            
            
          ],)
      

    


      
    ],),

    );


 return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(appBar: AppBar(title: Text('My Songs'),backgroundColor: Colors.purple[200],),body: body,),
);   
}


