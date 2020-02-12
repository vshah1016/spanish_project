import 'package:flutter/material.dart';
import 'package:spanish_project/player_model.dart';
import 'package:spanish_project/userpage.dart';

class Name extends StatefulWidget {
  @override
  _NameState createState() => _NameState();
}

class _NameState extends State<Name> {
  String firstName;
  String lastName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "₲₵",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Text(
                "Nombre:",
                style: Theme.of(context).textTheme.display2,
              ),
              TextField(
                onChanged: (text) {
                  firstName = text;
                },
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Apellido: ",
                style: Theme.of(context).textTheme.display2,
              ),
              TextField(
                onChanged: (text) {
                  lastName = text;
                },
              ),
              SizedBox(
                height: 40,
              ),
              RaisedButton(
                onPressed: () {
                  print(firstName);
                  print(lastName);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Userpage(
                        player: PlayerModel(
                            firstName: firstName,
                            lastName: lastName),
                      ),
                    ),
                  );
                },
                child: Text("Empezar!"),
                color: Colors.amber,
              ),
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Made By Veer Shah for Azul Class",
                  style: TextStyle(fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
