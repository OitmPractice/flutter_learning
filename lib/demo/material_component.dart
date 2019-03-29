import 'package:flutter/material.dart';

class MeterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MeterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
           ListItem(
             title: 'FloatingActionButton',
             page: FloatingActionButtonDemo(),
           )
        ],
      ),
    );
  }
}



class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final Widget _floatingActionButton =FloatingActionButton(
      onPressed: (){},
      child: Icon(Icons.add),
      elevation: 0.0,//跟阴影的距离
      backgroundColor: Colors.black87,
      // shape: BeveledRectangleBorder(
      //   borderRadius: BorderRadius.circular(10)
      // ),
    );

    final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: (){},
      icon: Icon(Icons.add),
      label: Text('Add'),
    );
    return  Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
        ),
        shape: CircularNotchedRectangle(),
      ),
      // floatingActionButton: _floatingActionButtonExtended,
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
    );
  }
}