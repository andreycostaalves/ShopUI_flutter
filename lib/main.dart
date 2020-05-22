import 'package:flutter/material.dart';
import 'package:shopping/pages/tabs.page.dart';
import 'package:shopping/themes/dark.theme.dart';
import 'package:shopping/themes/dark.yellow.theme.dart';
import 'package:shopping/themes/ligth.theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      //theme: darkYellowTheme(),
      theme: darkTheme(),
      //theme: lightTheme(),
      home: DefaultTabController(
        length: 3,
        child: TabsPage(),
      ),
    );
  }
}
