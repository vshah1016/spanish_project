import 'package:flutter/material.dart';
import 'package:spanish_project/completeTask.dart';
import 'package:spanish_project/moneyOpportunities.dart';
import 'package:spanish_project/player_model.dart';

class GetMoney extends StatefulWidget {
  final PlayerModel player;
  GetMoney({Key key, this.player}) : super(key: key);

  @override
  _GetMoneyState createState() => _GetMoneyState();
}

class _GetMoneyState extends State<GetMoney> {
  MoneyOpportunities opportunities = MoneyOpportunities.INSTANCE;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sacar Dinero"),
      ),
      body: ListView.builder(itemBuilder: (context, i) => OpportunityWidget(i: i, player: widget.player,), itemCount: opportunities.count,
      ),
    );
  }
}

class OpportunityWidget extends StatelessWidget {
  final int i;
  final PlayerModel player;
  MoneyOpportunities opportunities = MoneyOpportunities.INSTANCE;

  OpportunityWidget({Key key, this.i, this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("${opportunities.opportunitiesList[i]}"),
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => CompleteTask(task: opportunities.opportunitiesList[i], i: i, player: player)));
      },
    );
  }

}
