import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  //Row 横着排列
  //Column 竖排
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ConstrainedBoxDemo(),
          // AspectRatioDemo(),
          // StackDemo(),
          // IconBadge(Icons.pool),
          // IconBadge(Icons.pool, size: 64.0,),
          // IconBadge(Icons.pool),
        ],
      ),
    );
  }
}


// Column(
//       children: <Widget>[
//         IconBadge(Icons.pool, size: 64.0,)
//       ],
//     );

class  ConstrainedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 300.0,
        maxWidth: 200.0,
      ),
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1),
      ),
    );
  }
} 


class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //设置子部件宽高比例，使用子部件最大宽度，根据设置宽高比，设置子部件高度
    return AspectRatio(
            aspectRatio: 3.0/2.0,
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1),
            ),
        );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Stack里面的内容会叠加在一起
    return Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              // SizedBox 使用它  不设置子部件  作为界面的间隔
              SizedBox(
                width: 200,
                height: 300,
                child: Container(
                  // alignment: Alignment(-1, 0),
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1),
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1),
                    // borderRadius: BorderRadius.circular(8)
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(7, 102, 255, 1),
                        Color.fromRGBO(3, 54, 255, 1),
                      ]
                    )
                  ),
                  child: Icon(Icons.brightness_2, color:Colors.white, size:32.0),
                ),
              ),
              Positioned(
                right: 20,
                top: 20,
                child: Icon(Icons.ac_unit, color:Colors.white, size:32.0),
              ),
              Positioned(
                right: 10,
                top: 100,
                child: Icon(Icons.ac_unit, color:Colors.white, size:32.0),
              ),
              Positioned(
                right: 50,
                top: 200,
                child: Icon(Icons.ac_unit, color:Colors.white, size:32.0),
              ),
              Positioned(
                right: 90,
                top: 80,
                child: Icon(Icons.ac_unit, color:Colors.white, size:32.0),
              ),
              Positioned(
                right: 70,
                top: 130,
                child: Icon(Icons.ac_unit, color:Colors.white, size:32.0),
              ),
            ],
          );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 53, 255, 1),
    );
  }
}
