import 'package:flutter/material.dart';
import 'package:movieapps/Screens/SignInScreen.dart';
import 'favoriteScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class MainDrawer extends StatefulWidget {
  String iduser;
  String email;
  String username;
  MainDrawer({this.iduser, this.email, this.username});

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  Future<void> _logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();

    Navigator.of(context)
        .pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
  }

  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(
                    "https://www.pngfind.com/pngs/m/470-4703547_icon-user-icon-hd-png-download.png",
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "${widget.email}",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "${widget.username}",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      SizedBox(
        height: 25.0,
      ),
      //Now let's Add the button for the Menu
      //and let's copy that and modify it

      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => FavoriteScreen()));
        },
        leading: Icon(
          Icons.featured_video_outlined,
          color: Colors.blue,
        ),
        title: Text("My favorite"),
      ),

      ListTile(
        onTap: () {
          _logout();
          // Navigator.pushReplacementNamed(context, '/');
        },
        leading: Icon(
          Icons.logout,
          color: Colors.blue,
        ),
        title: Text("Log Out"),
      ),
    ]);
  }
}
