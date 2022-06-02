import 'package:am_test_2/model/account.dart';
import 'package:flutter/material.dart';

class CashingPage extends StatefulWidget {
  const CashingPage({Key? key}) : super(key: key);

  @override
  State<CashingPage> createState() => _CashingPageState();
}

class _CashingPageState extends State<CashingPage> {

  Account myAccount =Account(
  id: '0721',
  name: 'kawai',

  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),

      appBar: AppBar(
        centerTitle: true,
        title: Text('home', style: TextStyle(color: Colors.black54),),
        backgroundColor: Colors.white,
        elevation: 1,
      ),

      body:
       Column(
         children: [
           Container(
             padding: const EdgeInsets.all(5.0),
             margin: const EdgeInsets.all(20.0),
             width: 360,
             height: 220,
             decoration: BoxDecoration(color: Colors.white,
             border: Border.all(color: Colors.black12),
             borderRadius: BorderRadius.circular(10),
             ),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.end,
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Text('ID: '),
                   Text(myAccount.id),
                   Text('   PokerName: '),
                   Text(myAccount.name),
                 ],
               )
           ),
         ], //追記：Columnの中のchildren
       ),


      );
  }
}
