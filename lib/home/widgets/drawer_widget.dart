import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.pink),
            currentAccountPicture: CircleAvatar(),
            otherAccountsPictures: [
              CircleAvatar(),
            ],
            accountName: Text("Gabul"),
            accountEmail: Text("email@gabul.dev")),
        ListTile(
          title: Text("Navegar"),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {},
        ),
      ],
    ));
  }
}
