import 'package:flutter/material.dart';
import 'package:spanish_project/get_money.dart';
import 'package:spanish_project/player_model.dart';

class Userpage extends StatefulWidget {
  final PlayerModel player;

  Userpage({Key key, @required this.player}) : super(key: key);

  @override
  _UserpageState createState() => _UserpageState();
}

class _UserpageState extends State<Userpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido a ₲₵, ${widget.player.firstName}'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(),
          ),
          Center(
              child: Text(
            "Tienes",
            style: Theme.of(context).textTheme.headline,
            textAlign: TextAlign.center,
          )),
          Center(
              child: Text(
            "\$${widget.player.money}",
            style: Theme.of(context).textTheme.display4,
            textAlign: TextAlign.center,
          )),
          Expanded(
            flex: 1,
            child: Container(),
          ),
          RaisedButton(
            child: Text("Sacar Dinero"),
            onPressed: () => getMoney(context),
            color: Colors.amber,
          ),
          Builder(
            builder: (context) {return RaisedButton(
              child: Text(
                "Comprar la ciudad de ₲₵ para \$100",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => buyTown(context),
              color: Colors.red,
            );}
          ),
          Expanded(
            flex: 2,
            child: Container(),
          ),
        ],
      ),
    );
  }

  void getMoney(var context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => GetMoney(player: widget.player)),
    );
  }

  void buyTown(context) {
    if (widget.player.money < 100) Scaffold.of(context).showSnackBar(SnackBar(content: Text("Not Enough Money"),));
    else {
      setState(() {
        widget.player.money -= 100;
      });
      Scaffold.of(context).showSnackBar(SnackBar(content: Text("Bought!")));
    }

  }

  void increaseMoney () {
    widget.player.money += 100;
  }
}
