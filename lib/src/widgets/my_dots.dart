import 'package:flutter/material.dart';

class MyDots extends StatelessWidget {
  final int currentIndex;
  final double top;
  const MyDots({ required this.currentIndex, required this.top});

  Color getColor(int index){
    return index == currentIndex ? Colors.white : Colors.white38;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        child: Row(
          children: [
            AnimatedContainer(
              duration: Duration(microseconds: 300),
              height: 7,
              width: 7,
              decoration: BoxDecoration(
                  color: getColor(0),
                  shape: BoxShape.circle
              ),
            ),
            SizedBox(width: 8,),
            AnimatedContainer(
              duration: Duration(microseconds: 300),
              height: 7,
              width: 7,
              decoration: BoxDecoration(
                  color: getColor(1),
                  shape: BoxShape.circle
              ),
            ),
            SizedBox(width: 8,),
            AnimatedContainer(
              duration: Duration(microseconds: 300),
              height: 7,
              width: 7,
              decoration: BoxDecoration(
                  color: getColor(2),
                  shape: BoxShape.circle
              ),
            ),
            SizedBox(width: 8,)
          ],
        ));
  }
}
