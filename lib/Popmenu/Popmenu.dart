import 'package:appbarcustom/Appbar/AppbarCustom.dart';
import 'package:appbarcustom/BottomNavigatibar/BottomNavigationbar.dart';
import 'package:appbarcustom/Drawer/Drawer.dart';
import 'package:flutter/material.dart';

class Popmenu extends StatefulWidget {
  const Popmenu({super.key});

  @override
  State<Popmenu> createState() => _PopmenuState();
}

class _PopmenuState extends State<Popmenu> {

  @override
  Widget build(BuildContext context) {
    var selectedItem ="";
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppMaking.com"),
        centerTitle: true,
        actions: [
          PopupMenuButton(onSelected: (value) {
            // your logic
            setState(() {
              selectedItem = value.toString();
            });
            print(value);
            Navigator.pushNamed(context, value.toString());
          }, itemBuilder: (BuildContext bc) {
            return const [
              PopupMenuItem(
                child: Text("Hello"),
                value: '/hello',
              ),
              PopupMenuItem(
                child: Text("About"),
                value: '/about',
              ),
              PopupMenuItem(
                child: Text("Contact"),
                value: '/contact',
              )
            ];
          })
        ],
      ),
      body: Center(
        child: Text(selectedItem),
      ),
    );
  }
}
