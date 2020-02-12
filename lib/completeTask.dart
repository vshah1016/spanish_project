import 'package:flutter/material.dart';
import 'package:spanish_project/player_model.dart';
import 'package:spanish_project/userpage.dart';

class CompleteTask extends StatelessWidget {
  final PlayerModel player;
  final String expectedCode = "0851";
  final String task;
  final int i;
  String enteredCode;

  CompleteTask({Key key, this.task, this.i, this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(task),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Cuando completas, pregunta Ivan, Veer, o Rama para el codigo:",
            ),
          ),
          SizedBox(
            width: 40,
            child: TextField(
              keyboardType: TextInputType.number,
              onChanged: (code){
                enteredCode = code;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: RaisedButton(
              child: Text("Submit"),
              color: Colors.amber,
              onPressed: (){
                if (enteredCode == expectedCode){
                  print("neeed");
                  Navigator.pop(context);
                  Navigator.pop(context);
                  player.money += 20;
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){return Userpage(player: player,);}));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
