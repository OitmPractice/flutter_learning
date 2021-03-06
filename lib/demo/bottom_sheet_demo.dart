import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  
  final _bottomSheetScaffoldKey =GlobalKey<ScaffoldState>();

  Future _openModalBottomSheet() async{
    final option = await showModalBottomSheet(
      context: context,
      builder: (BuildContext context){
        return Container(
          height: 200.0,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('Option A'),
                onTap: (){
                  Navigator.pop(context, 'A');
                },
              ),
              ListTile(
                title: Text('Option B'),
                onTap: (){
                  Navigator.pop(context, 'B');
                },
              ),
              ListTile(
                title: Text('Option C'),
                onTap: (){
                  Navigator.pop(context, 'C');
                },
              ),
            ],
          ),
        );
      }
    );

    debugPrint(option);
  }

  _openBottomSheet(){
    _bottomSheetScaffoldKey
    .currentState
    .showBottomSheet((BuildContext context){
      return BottomAppBar(
        child: Container(
          height: 90.0,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.pause_circle_outline),
              SizedBox(width: 16.0,),
              Text("01:30 / 03:30"),
              Expanded(
                child: Text(
                  'Fixed you -Cold play',
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
        ),
      );
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('BottomSheetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('Open Bottom Sheet'),
                  onPressed: _openBottomSheet,
                ),
                FlatButton(
                  child: Text('Open Modal Bottom Sheet'),
                  onPressed: _openModalBottomSheet,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}