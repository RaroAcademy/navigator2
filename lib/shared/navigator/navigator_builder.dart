import 'package:flutter/material.dart';

class NavigatorBuilder extends StatefulWidget {
  final List<Widget> pages;
  NavigatorBuilder({Key? key, required this.pages}) : super(key: key);

  @override
  NavigatorBuilderState createState() => NavigatorBuilderState();
}

class NavigatorBuilderState extends State<NavigatorBuilder> {
  int index = 0;

  late List<Widget> currentPages;

  void nextPage(int value) {
    index = value;
    currentPages.add(widget.pages[index]);
    setState(() {});
  }

  void backPage() {
    index--;
    currentPages.removeAt(index);
    setState(() {});
  }

  @override
  void initState() {
    currentPages = [widget.pages[0]];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onPopPage: (route, result) {
        if (route.didPop(result)) {
          backPage();
          return true;
        } else {
          return false;
        }
      },
      pages: currentPages.map((e) => MaterialPage(child: e)).toList(),
    );
  }
}
