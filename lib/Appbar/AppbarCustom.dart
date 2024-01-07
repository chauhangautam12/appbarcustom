import 'package:flutter/material.dart';

class AppbarCustom extends StatefulWidget {
  const AppbarCustom({super.key});

  @override
  State<AppbarCustom> createState() => _AppbarCustomState();
}

class _AppbarCustomState extends State<AppbarCustom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        toolbarHeight: 70,
        centerTitle: true,
        flexibleSpace: Container(

          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
              gradient: LinearGradient(
                // begin: Alignment.center,
                // end: Alignment.bottomLeft,

                  colors: [
                    Colors.limeAccent,Colors.red,Colors.lime])),

        ) ,
        title: Text("User Info",style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.white,
      ),
    );
  }
}
