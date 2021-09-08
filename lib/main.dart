import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: GamePage(title: 'MyApp')
    );
  }

}

class GamePage extends StatefulWidget{
  GamePage({Key key, this.title}) : super(key: key);
  final String title;

@override
 _GamePageState createState() => _GamePageState();
  }

  @override
class  _GamePageState extends State<GamePage>{
  bool _alertIsVisible = false;
  bool _whoIsClicked = false;

    @override
  Widget build(BuildContext context){
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Hello new user",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
              ),
              FlatButton(
                child: Text('Please Hit me', style: TextStyle(color: Colors.blue)),
                onPressed: () {
                  this._alertIsVisible = true;
                  _showAlert(context);
                  print("Button pressed");
                },
              ),

              FlatButton(
                child: Text('Wooow', style: TextStyle(color: Colors.pink)),
                onPressed: () {
                  this._whoIsClicked = false;
                  _showWhoIsClicked(context);
                  print("Button is clicked");
                },
              )
            ],
          ),
        )
      );
    }

    void _showAlert(BuildContext context){
      Widget okButton = FlatButton(
        child: Text("Great"),
        onPressed: (){
      Navigator.of(context).pop();
      this._alertIsVisible = false;
      print("Great  $_alertIsVisible");
      });
      showDialog(
          context: context,
          builder: (BuildContext context){
            return AlertDialog(
              title: Text("Hello there"),
              content: Text("This is my first pop-up."),
              actions: <Widget>[
                okButton,
              ],
              elevation: 5,
            );

      },
      );
  }
  void _showWhoIsClicked(BuildContext context){
    Widget okButton = FlatButton(
        child: Text("Exit"),
        onPressed: (){
          Navigator.of(context).pop();
          this._whoIsClicked = false;
        });
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text("Whoo are you"),
          content: Text("Get out"),
          actions: <Widget>[
            okButton,
          ],
          elevation: 5,
        );

      },
    );
  }
}
