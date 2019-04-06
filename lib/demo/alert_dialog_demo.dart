import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

enum Action { OK, Cancel }

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = 'Nothing';

  Future _openAlerDialog() async {
    final Action action = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('AlertDialog'),
            content: Text('Are you sure about this?'),
            actions: <Widget>[
              FlatButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.pop(context, Action.Cancel);
                },
              ),
              FlatButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.pop(context, Action.OK);
                },
              ),
            ],
          );
        });

    switch (action) {
      case Action.Cancel:
        setState(() {
          _choice = "cancel";
        });
        break;
      case Action.OK:
        setState(() {
          _choice = "OK";
        });
        break;
      default:
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('your choice is : $_choice'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('Open Dialog'),
                  onPressed: _openAlerDialog,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
