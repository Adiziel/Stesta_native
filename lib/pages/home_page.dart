import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          toolbarHeight: 75.0,
          backgroundColor: Colors.black,
          actions: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('assets/images/logo.png'),
            ),
          ],
        ),
        body: Column(),
        drawer: Drawer(
          child: Container(
            color: Colors.black87,
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: Icon(CupertinoIcons.home, color: Colors.white),
                      title: Text(
                        "Home",
                        textScaleFactor: 1.2,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(CupertinoIcons.home, color: Colors.white),
                      title: Text(
                        "Home",
                        textScaleFactor: 1.2,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(CupertinoIcons.home, color: Colors.white),
                      title: Text(
                        "Home",
                        textScaleFactor: 1.2,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(CupertinoIcons.home, color: Colors.white),
                      title: Text(
                        "Home",
                        textScaleFactor: 1.2,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
