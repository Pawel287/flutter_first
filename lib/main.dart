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
    @override
  Widget build(BuildContext context){
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,,
            children: <Widget>[
              Text(
                "Hello MyApp",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
              ),
              FlatButton(
                child: Text('Please Hit me', style: TextStyle(color: Colors.blue)),
                onPressed: () {},
              )
            ],
          ),
        )
      );
    }
}





void main() {
  runApp(MyApp());
}
