import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final bool showMenu;
  final VoidCallback onTap;

  const MyAppBar({ required this.showMenu, required this.onTap }) ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            color: Colors.purple[800],
            height: MediaQuery.of(context).size.height * .20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network('https://logodownload.org/wp-content/uploads/2019/08/nubank-logo-3.png',
                      height: 35,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10,),
                    Text('Jardriel',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                  ],
                ),
                Icon(!showMenu ? Icons.expand_more : Icons.expand_less)
              ],
            ),
          ),
        ),

      ],
    );
  }
}
