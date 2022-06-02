import 'package:flutter/material.dart';

class TournamentPage extends StatefulWidget {
  const TournamentPage({Key? key}) : super(key: key);

  @override
  State<TournamentPage> createState() => _TournamentPageState();
}

class _TournamentPageState extends State<TournamentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('tournament', style: TextStyle(color: Colors.black54),),
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 1,
      ),
    );
  }
}
