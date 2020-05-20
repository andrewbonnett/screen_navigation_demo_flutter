import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen_arguments.dart';
import 'screen2.dart';

class Screen0 extends StatelessWidget {
  static const routeName = '/screen0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Screen 0'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              color: Colors.red,
              child: Text('Go To Screen 1'),
              onPressed: () {
                //https://flutter.dev/docs/cookbook/navigation/navigate-with-arguments
                Navigator.pushNamed(context, Screen1.routeName,
                    arguments: ScreenArguments(
                      'Extract Arguments Screen',
                      'This message is extracted in the build method',
                    ));
              },
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text('Go To Screen 2'),
              onPressed: () {
                Navigator.pushNamed(context, Screen2.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
