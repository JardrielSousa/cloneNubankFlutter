import 'package:clone_nubank/src/widgets/card_app.dart';
import 'package:clone_nubank/src/widgets/my_app_bar.dart';
import 'package:clone_nubank/src/widgets/my_dots.dart';
import 'package:clone_nubank/src/widgets/page_view_app.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'root_page';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late bool _showMenu;
  late int _currentIndex;
  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }
  @override
  Widget build(BuildContext context) {
    double  _screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          MyAppBar(showMenu: _showMenu,
          onTap: (){
            setState(() {
              _showMenu = !_showMenu;
            });
          }),
          PageViewApp(top:_screenHeigth * .24,  //!_showMenu ? _screenHeigth * .24 : _screenHeigth * .75,
          onChanged: (index){
            setState(() {
              _currentIndex = index;
            });
          },),
          MyDots(
              top: _screenHeigth * .70,
              currentIndex: _currentIndex,)

        ],
      ),
    );
  }
}
