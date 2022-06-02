import 'package:am_test_2/view/cashing/cashing.page.dart';
import 'package:am_test_2/view/order/order.page.dart';
import 'package:am_test_2/view/schedule/schedule.page.dart';
import 'package:am_test_2/view/tournament/tournament.page.dart';
import 'package:flutter/material.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({Key? key}) : super(key: key);

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  int selectedIndex=0;
  List<Widget> pageList = [CashingPage(), TournamentPage(), OrderPage(), SchedulePage(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.black45,),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.balance,color: Colors.black45,),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bakery_dining,color: Colors.black45,),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month,color: Colors.black45,),
              label: ''
          ),
        ],
        currentIndex: selectedIndex,
        onTap: (index){
          setState((){
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
