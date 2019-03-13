import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {

 
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://songshuran.github.io/start/2019/01/10/daozhang.JPG'),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeatY,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
           Colors.indigoAccent[400].withOpacity(0.6) , BlendMode.hardLight)
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32, color: Colors.white, ),
            // color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                width: 5.0,
                color: Colors.red,
                style: BorderStyle.solid
              ),
              // border: Border(
              //   top: BorderSide(
              //     color: Colors.black,
              //     width: 3.0,
              //     style: BorderStyle.solid
              //   ),
              //   bottom: BorderSide(
              //     color: Colors.red,
              //     width: 3.0,
              //     style: BorderStyle.solid
              //   ),
              // )

              // borderRadius: BorderRadius.circular(16.0),
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(30.0),
              //   bottomLeft: Radius.circular(30.0)
              // ),

              boxShadow: [
                BoxShadow(
                  offset: Offset(6, 7),
                  color: Color.fromRGBO(16, 20, 188, 1),
                  blurRadius: 10.0,
                  spreadRadius: -3.0,
                )
              ],

              shape: BoxShape.circle,

              //径向渐变
              // gradient: RadialGradient(
              //   colors: [
              //     Color.fromRGBO(7, 102, 255, 1),
              //     Color.fromRGBO(3, 28, 128, 1),
              //   ],
              // ),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1),
                  Color.fromRGBO(3, 28, 128, 1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              ),

            ),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
        text: 'Oitm',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: '.net',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.black
            )
          )
        ]
      ),
    );
  }
}


class TextDemo extends StatelessWidget{
 final TextStyle _textStyle =TextStyle(
    fontSize: 16.0,
  );

  final String _author = 'Oitm';
  final String _title = '三字经';

  Widget build(BuildContext context) {
    return Text(
      '《 $_title 》-- $_author，是中国的传统启蒙教材。在中国古代经典当中，《三字经》是最浅显易懂的读本之一。《三字经》取材典范，包括中国传统文化的文学、历史、哲学、天文地理、人伦义理、忠孝节义等等，而核心思想又包括了“仁，义，诚，敬，孝。”背诵《三字经》的同时，就了解了常识、传统国学及历史故事，以及故事内涵中的做人做事道理。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
    );
  }
}