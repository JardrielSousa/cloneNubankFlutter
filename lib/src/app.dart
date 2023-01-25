import 'package:clone_nubank/src/home_page.dart';
import 'package:flutter/material.dart';

class NuFinance extends StatelessWidget {
  const NuFinance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nu Finance',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.dark
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) =>HomePage(),
      },
    );
  }
}
