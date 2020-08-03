



import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'audioplayer.dart';
import 'videoplayer.dart';
import 'package:path/path.dart' as Path;

audio()
{
  AudioPlayer();
}
video()
{
  videoPlayer();
}




MainScreen()
{
  FlutterStatusbarcolor.setStatusBarColor(Colors.purple[300]);
  account()
  {
    Fluttertoast.showToast(
        msg: "Hello Arsh!!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }


   bookmark()
  {
    Fluttertoast.showToast(
        msg: "bookmarked!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  } 

  var mybody = Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    color: Colors.blue[200],
    margin: EdgeInsets.all(10),

  child: Center(
    
    child: Column(children: <Widget>[
      
      RaisedButton(child: Text('Audio Player'),
      onPressed: audio,
      padding: EdgeInsets.only(top: 10),),


      RaisedButton(child: Text('Video Player'),
      onPressed: video,
      padding: EdgeInsets.only(top: 10),),

    ],),
  ),  
  );
  

return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(appBar: AppBar(title: Text('Media Player'),backgroundColor: Colors.purple[200],),body: mybody,),
);


}