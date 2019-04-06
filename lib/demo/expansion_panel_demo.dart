import 'package:flutter/material.dart';

class ExpansionPannelItem {
  final String headerText;
  final Widget body;
  bool isExpanded;
  ExpansionPannelItem({
    this.headerText,
    this.body,
    this.isExpanded,
  });
}

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  List<ExpansionPannelItem> _expansionPannelItems;
  void initState() {
    super.initState();
    _expansionPannelItems = <ExpansionPannelItem>[
      ExpansionPannelItem(
          headerText: 'Pannel A',
          body: Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            child: Text('Content for Pannel A'),
          ),
          isExpanded: false),
          ExpansionPannelItem(
          headerText: 'Pannel B',
          body: Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            child: Text('Content for Pannel B'),
          ),
          isExpanded: false),
          ExpansionPannelItem(
          headerText: 'Pannel C',
          body: Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            child: Text('Content for Pannel C'),
          ),
          isExpanded: false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanelDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (int pannelIndex, bool isExpanded) {
                setState(() {
                  _expansionPannelItems[pannelIndex].isExpanded = !isExpanded;
                });
              },
              children: _expansionPannelItems.map(
                (ExpansionPannelItem item){
                  return ExpansionPanel(
                    isExpanded: item.isExpanded,
                    body: item.body,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        item.headerText,
                        style: Theme.of(context).textTheme.title,
                      ),
                    );
                  },
                  );
                }
              ).toList(

              ),
            ),
          ],
        ),
      ),
    );
  }
}
