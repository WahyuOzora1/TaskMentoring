import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:profilsekolahfirebaseapp/homescreen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth =
      FirebaseAuth.instance; //untuk menghandle akun yang login
  final GoogleSignIn _googleSignIn =
      GoogleSignIn(); //untuk sign in dengan google dan langsung inisialisasikan dan buat method login nya

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "PROFIL SCHOOL APPS",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.black26,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/splaas.png',
              height: 130,
              width: 130,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              color: Colors.blue[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/google.png',
                    height: 30,
                  ),
                  MaterialButton(
                    onPressed: () async {
                      await _handleGoogleSignIn();
                    },
                    child: Text(
                      "Login With Google",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _handleGoogleSignIn() async {
    final GoogleSignInAccount googleUSer = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUSer.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      idToken: googleAuth.idToken,
      accessToken: googleAuth.accessToken,
    );

    AuthResult result = await _auth.signInWithCredential(
        credential); //sign in menggunkan credential diatas

    FirebaseUser user = result.user; //ambil user yang telah login

    //setelah login nampilin sebuah alert dialog
    //ngirim data user
    _alertDialog(user);
  }

  //method untuk log out

  void _alertDialog(FirebaseUser user) {
    AlertDialog dialog = AlertDialog(
      content: Container(
          height: MediaQuery.of(context).size.height / 8,
          child: Column(
            children: <Widget>[
              Text(
                "Berhasil Login !!!",
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(
                height: 10,
              ),
              Text("as ${user.displayName}"),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: MaterialButton(
                    color: Colors.grey,
                    child: Text("Ok"),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (_) => HomeScreen(
                                    //ngirim data harus di inisialisasi dulu di kirim dimana sesuai nama variabelnya
                                    user: user,
                                    googleSignIn: _googleSignIn,
                                  )));
                    }),
              ),
            ],
          )),
    );
    showDialog(context: context, builder: (_) => dialog);
  }
}
