import 'package:flutter/material.dart';
import './button_demo.dart';
import './floating_action_button_demo.dart';
import './popup_menu_button_demo.dart';
import './form_demo.dart';
import './checkbox_demo.dart';
import './radio_demo.dart';
import './switch_demo.dart';
import './slider_demo.dart';
import './datetime_demo.dart';

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
            title: 'DateTimeDemo',
            page: DateTimeDemo(),
          ),
          ListItem(
            title: 'SliderDemo',
            page: SliderDemo(),
          ),
          ListItem(
            title: 'SwitchDemo',
            page: SwitchDemo(),
          ),
          ListItem(
            title: 'RadioDemo',
            page: RadioDemo(),
          ),
          ListItem(
            title: 'CheckBox',
            page: CheckBoxDemo(),
          ),
          ListItem(
            title: 'Form',
            page: FormDemo(),
          ),
           ListItem(
            title: 'PopupMenuButton',
            page: PopupMenuButtonDemo(),
          ),
          ListItem(
            title: 'Button',
            page: ButtonDemo(),
          ),
          ListItem(
            title: 'FloatingActionButton',
            page: FloatingActionButtonDemo(),
          ),
        ],
      ),
    );
  }
}



class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            )
          ],
        ),
      ),
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
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
    );
  }
}
