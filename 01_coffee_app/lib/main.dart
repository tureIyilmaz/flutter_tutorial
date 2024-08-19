import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const CircleAvatar(
                  radius: 75.0,
                  backgroundImage: AssetImage('assets/images/coffee.png'),
                ),
                Text(
                  'Flutter Kahvecisi',
                  style: GoogleFonts.caveat(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 54.0,
                    ),
                  ),
                ),
                Text(
                  'Her Yudumda Bir Hikaye',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 24.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: Divider(
                    height: 30.0,
                    color: Colors.blueGrey,
                  ),
                ),
                Card(
                  margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.blueGrey[900],
                      size: 24.0,
                    ),
                    title: Text(
                      'siparis@flutterkahvecisi.com',
                      style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Card(
                  color: Colors.white,
                  margin: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone_android,
                      color: Colors.blueGrey[900],
                      size: 24.0,
                    ),
                    title: Text(
                      '+90 539 553 89 06',
                      style: GoogleFonts.abel(
                        textStyle: TextStyle(
                          color: Colors.blueGrey[900],
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
