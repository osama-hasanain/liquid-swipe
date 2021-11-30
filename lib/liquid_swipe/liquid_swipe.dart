import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class MyLiquidSwipe extends StatefulWidget {

  @override
  _MyLiquidSwipeState createState() => _MyLiquidSwipeState();
}

class _MyLiquidSwipeState extends State<MyLiquidSwipe> {

  var controller = LiquidController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liquid Swipe'),
      ),
      body: LiquidSwipe(
        pages: [
          MyWidget('assets/imgs/squid_game1.jpg'),
          MyWidget('assets/imgs/squid_game2.jpg'),
          MyWidget('assets/imgs/squid_game3.jpg'),
        ],
        liquidController: controller,
      ),
    );
  }

  Widget MyWidget(String img)=>
      Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              img,
              fit:BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 50.0,
            right: 10.0,
            child:Text(
              'SWIP LEFT',
              style: TextStyle(
                color:Colors.white
              ),
            ),
          )
        ],
      );
}
