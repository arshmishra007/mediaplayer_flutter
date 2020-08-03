import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

videoPlayer()
{
 
  String videoUrl = "https://www.youtube.com/watch?v=P4bIlidzgQ4";
  YoutubePlayerController _controller;

  _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoUrl));


  var mybody = Container(
    alignment: Alignment.center,
    height: double.infinity,
    width: double.infinity,
    color: Colors.yellow[300],
    margin: EdgeInsets.all(20),
  

  child: Column(mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Text(
      'Play Videos Online!',
      style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black45),
        ),
    Container(
      height: 310,
      width: 310,
     child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
              ),
      
    )    
    
  ],),

  );
  return MaterialApp(debugShowCheckedModeBanner: false,
  home: Scaffold(appBar: AppBar(title: Center(child: Text('Video Player')),backgroundColor: Colors.purple[300],),body: mybody,),);
}