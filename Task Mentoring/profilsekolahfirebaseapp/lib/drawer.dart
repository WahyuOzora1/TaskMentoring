// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:profilsekolahfirebaseapp/login_page.dart';

// class Drawerku extends StatefulWidget {
//   @override
//   _DrawerkuState createState() => _DrawerkuState();
// }

// class _DrawerkuState extends State<Drawerku> {
//   final GoogleSignIn _googleSignIn = GoogleSignIn();

//   Future<void> signOut() async {
//     await _googleSignIn.signOut();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       // Important: Remove any padding from the ListView.
//       padding: EdgeInsets.zero,
//       children: <Widget>[
//         DrawerHeader(
//           child: Center(
//             child: Column(
//               children: <Widget>[
//                 Image.network(
//                   "https://www.searchpng.com/wp-content/uploads/2019/02/Profile-ICon.png",
//                   height: MediaQuery.of(context).size.height / 9.5,
//                 )
//               ],
//             ),
//           ),
//           decoration: BoxDecoration(
//             color: Colors.blue,
//           ),
//         ),
//         ListTile(
//           title: Text('Item 1'),
//           onTap: () {
//             // Update the state of the app
//             // ...
//             // Then close the drawer
//             Navigator.pop(context);
//           },
//         ),
//         ListTile(
//           title: InkWell(
//             child: Text('Log Out'),
//             onTap: () {
//               signOut();
//               LoginPage();
//               Navigator.pushAndRemoveUntil(
//                   context,
//                   MaterialPageRoute(builder: (_) => LoginPage()),
//                   (route) => false);
//             },
//           ),
//           leading: IconButton(
//             icon: Icon(Icons.login_rounded),
//             onPressed: () {
//               signOut();
//               Navigator.pushAndRemoveUntil(
//                   context,
//                   MaterialPageRoute(builder: (_) => LoginPage()),
//                   (route) => false);
//             },
//           ),
//           onTap: () {
//             // Update the state of the app
//             // ...
//             // Then close the drawer
//             Navigator.pop(context);
//           },
//         ),
//       ],
//     );
//   }
// }
