import 'package:clone_nubank/src/widgets/card_app.dart';
import 'package:flutter/material.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;
  const PageViewApp({Key? key, required this.top, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(microseconds: 300),
      curve: Curves.easeOut,
      top: top,
      height: MediaQuery.of(context).size.height * .45,
      left: 0,
      right: 0,
      child: PageView(
        onPageChanged: onChanged,
        physics: BouncingScrollPhysics(),
        children: [
          CardApp(),
          CardApp(),
          CardApp(),
        ],
      )
      ,
    );
  }
}
