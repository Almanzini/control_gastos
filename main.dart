import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() =>
  runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget _bottomAction (IconData icon){
     return InkWell(
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Icon(icon),
       ),
       onTap: (){},

     );
  }

  @override
  Widget build(BuildContext context) {
       return Scaffold(
         bottomNavigationBar: BottomAppBar(
           child: Row(
             mainAxisSize: MainAxisSize.max,
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
             _bottomAction(FontAwesomeIcons.history),
             _bottomAction(FontAwesomeIcons.chartPie),
             _bottomAction(FontAwesomeIcons.wallet),
             _bottomAction(Icons.settings),
           ],)
         ),
         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
         floatingActionButton: FloatingActionButton(
           child: Icon(Icons.add),
           onPressed: (){}),
        );
  }
}
