import 'package:flutter/material.dart';

class FirstAppPage extends StatefulWidget {
  const FirstAppPage({Key? key}) : super(key: key);

  @override
  State<FirstAppPage> createState() => _FirstAppPageState();
}
class _FirstAppPageState extends State<FirstAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar() ,
      drawer: Drawer(child: Column(children: [

      ],),),
      body: Container(),
    );
  }
}
