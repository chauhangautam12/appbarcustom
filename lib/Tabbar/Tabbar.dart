import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("AppMaking.com",style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.red,
          bottom:TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            tabs: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Tab(
                  // icon: Icon(Icons.chat_bubble),
                  text: "Chats",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Tab(
                  // icon: Icon(Icons.video_call),
                  text: "Calls",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Tab(
                  // icon: Icon(Icons.settings),
                  text: "Settings",
                ),
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(

              child: Text("Chats"),
            ),
            Center(
              child: Text("Calls"),
            ),
            Center(
              child: Text("Settings"),
            ),
          ],
        ),
      ),
    );
  }
}
