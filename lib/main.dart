import 'package:bottomnavigation_sample/page1.dart';
import 'package:bottomnavigation_sample/page2.dart';
import 'package:bottomnavigation_sample/page3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
     0: GlobalKey<NavigatorState>(),
     1: GlobalKey<NavigatorState>(),
     2: GlobalKey<NavigatorState>(),
  };
    final List<Widget> _widgetOptions = <Widget>[
    const page1(),
    const page2(),
    const page3()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
       bottomNavigationBar: BottomNavigationBar(
         items: const <BottomNavigationBarItem>[
           BottomNavigationBarItem(
             icon: Icon(Icons.home),
             label: 'Home',
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.business),
             label: 'Business',
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.school),
             label: 'School',
           ),
         ],
         currentIndex: _selectedIndex,
         selectedItemColor: Colors.amber[800],
         onTap: _onItemTapped,
       ),
      body:  buildNavigator(),
    );
  }

   buildNavigator() {
     return Navigator(
       key: navigatorKeys[_selectedIndex],
       onGenerateRoute: (RouteSettings settings){
         return MaterialPageRoute(builder: (_) => _widgetOptions.elementAt(_selectedIndex));
       },
     );
  }
}
