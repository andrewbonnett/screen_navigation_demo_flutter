import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:navigation_demo_starter/screen2.dart';
import 'screen2.dart';
import 'screen_arguments.dart';

class Screen1 extends StatelessWidget {
  static const routeName = '/screen1';
  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute settings and cast
    // them as ScreenArguments.
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.red,
              child: Text('Go Forwards To Screen 2'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Screen2();
                    },
                  ),
                );
              },
            ),
            Text(args.title),
            Text(args.message),
          ],
        ),
      ),
    );
  }
}
