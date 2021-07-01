import 'package:flutter/material.dart';
import '../shared/navigator/navigator_builder.dart';
import 'widgets/drawer_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final navigatorKey = GlobalKey<NavigatorBuilderState>();

  int get index => navigatorKey.currentState?.index ?? 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerWidget(),
      body: NavigatorBuilder(
        key: navigatorKey,
        pages: [
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              elevation: 0,
            ),
            body: Container(
              child: Center(child: Text("red")),
              color: Colors.red,
            ),
          ),
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              elevation: 0,
            ),
            body: Container(
              child: Center(child: Text("blue")),
              color: Colors.blue,
            ),
          ),
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              elevation: 0,
            ),
            body: Container(
              child: Center(child: Text("green")),
              color: Colors.green,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            navigatorKey.currentState!.nextPage(value);
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
            BottomNavigationBarItem(
                label: "Settings", icon: Icon(Icons.settings))
          ]),
    );
  }
}
