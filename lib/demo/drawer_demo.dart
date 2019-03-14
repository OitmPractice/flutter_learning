import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'Oitm', 
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
              accountEmail: Text('happy_ran@outlook.com',
              style: TextStyle(color: Colors.white),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://songshuran.github.io/start/2019/01/10/daozhang.JPG'),
              ),
              decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                  image: NetworkImage('https://tse1-mm.cn.bing.net/th?id=OIP.nWjIe7m2lNqI0EGZODjzLwHaEZ&w=180&h=107&c=8&rs=1&qlt=90&pid=3.1&rm=2'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.yellow.withOpacity(0.6), 
                    BlendMode.hardLight
                    )
                )
              ),
            ),
            // DrawerHeader(
            //   child: Text('header'.toUpperCase()),
            //   decoration: BoxDecoration(
            //     color: Colors.grey[100],
            //   ),
            // ),
            ListTile(
              title: Text('Messages', textAlign: TextAlign.right),
              trailing: Icon(Icons.message, color: Colors.black12, size: 22.0,),
              onTap: () => Navigator.pop(context),
            ),
             ListTile(
              title: Text('Favorite', textAlign: TextAlign.right),
              trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0,),
              onTap: () => Navigator.pop(context),
            ),
             ListTile(
              title: Text('Messages', textAlign: TextAlign.right),
              trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0,),
              onTap: () => Navigator.pop(context),
            ),
          ],
        )
      );
  }
}