import 'package:flutter/material.dart';

class Drawers extends StatefulWidget {


  @override
  State<Drawers> createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
     drawer: Drawer(
       child: ListView(
         children: [
           UserAccountsDrawerHeader(
             accountName: Text("chauhangautam",style: TextStyle(color: Colors.black)),
             accountEmail: Text("chauhangautam496@gmail.com"),
             currentAccountPicture: CircleAvatar(
               backgroundImage: NetworkImage(
                   "https://appmaking.co/wp-content/uploads/2021/08/appmaking-logo-colored.png"),
             ),
             decoration: BoxDecoration(
               image: DecorationImage(
                 image: NetworkImage(
                   "https://appmaking.co/wp-content/uploads/2021/08/android-drawer-bg.jpeg",
                 ),
                 fit: BoxFit.fill,
               ),
             ),
             otherAccountsPictures: [
               CircleAvatar(
                 backgroundColor: Colors.white,
                 backgroundImage: NetworkImage(
                     "https://randomuser.me/api/portraits/women/74.jpg"),
               ),
               CircleAvatar(
                 backgroundColor: Colors.white,
                 backgroundImage: NetworkImage(
                     "https://randomuser.me/api/portraits/men/47.jpg"),
               ),
             ],
           ),
           ListTile(
             leading: Icon(Icons.home),
             title: Text("Home"),
             onTap: () {},
           ),
           ListTile(
             leading: Icon(Icons.account_box),
             title: Text("About"),
             onTap: () {},
           ),
           ListTile(
             leading: Icon(Icons.grid_3x3_outlined),
             title: Text("Products"),
             onTap: () {},
           ),
           ListTile(
             leading: Icon(Icons.contact_mail),
             title: Text("Contact"),
             onTap: () {},
           )
         ],
       ),
     ),
    );
  }
}
