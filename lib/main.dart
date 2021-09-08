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
}
