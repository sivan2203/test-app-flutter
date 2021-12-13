import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors


void main() => runApp(MaterialApp(
  home: UserPanel(),

));

class UserPanel extends StatefulWidget {
  // const ({Key? key}) : super(key: key);

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text('3User'),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children:  [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Text(
                  'Ivan Sysoev',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/first-image.jpeg'),
                  radius: 50,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Row(
                  children: const [
                    Icon(Icons.mail_outline, size: 25, color: Colors.white),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    Text('sivan9458@gmail.com', style: TextStyle(color: Colors.white, fontSize: 18))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Text('Count: $_count', style: TextStyle(color: Colors.white, fontSize: 18))
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit_outlined),
        backgroundColor: Colors.amber,
        onPressed: () {
          setState(() {
            _count++;
          });
        },
      ),
    );
  }
}

