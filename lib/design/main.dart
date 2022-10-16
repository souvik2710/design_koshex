import 'package:flutter/material.dart';

import 'chart.dart';
import 'holdings.dart';


class DesignMainWidget extends StatefulWidget {
  DesignMainWidget({Key? key}) : super(key: key);

  @override
  State<DesignMainWidget> createState() => _DesignMainWidgetState();
}

class _DesignMainWidgetState extends State<DesignMainWidget> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: returnPage(myIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int sIndex){
        setState(() {
          myIndex = sIndex;
        });
        },
        currentIndex: myIndex,
        selectedItemColor: Color(0xff3366FF),
        unselectedItemColor: Color(0xff757575),
        backgroundColor: Color(0xffF0F4FF),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.handshake) ,
              label: 'holdings'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home) ,
            label: 'snapshot'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.monetization_on) ,
            label: 'investments'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person) ,
            label: 'profile'
          )
        ],

      ),
    );
  }
}



Widget returnPage(int index){
  switch (index) {
    case 0:
     return HoldingsWidget();
    case 1:
      return CurvedLineChart();
    case 2:
      return Container(color: Colors.blue,);
    case 3:
      return Container(color: Colors.green,);
    default:
      return Container(color: Colors.green,);

  }

}
