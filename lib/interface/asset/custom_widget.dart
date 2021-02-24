import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

// ignore: camel_case_types, must_be_immutable
class balanceButtton extends StatelessWidget {
  balanceButtton({@required this.onPressed, this.image});
  final GestureTapCallback onPressed;
  String image;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Column(
        children: [
          Container(
              width: 60.0,
              height: 60.0,
              decoration: new BoxDecoration(
                color: Color(0xFFF5F9FF),
                image: new DecorationImage(
                  image: ExactAssetImage(image),
                  fit: BoxFit.fitWidth,
                ),
                borderRadius: BorderRadius.circular(10),
              )),
        ],
      ),
    );
  }
}



// ignore: camel_case_types, must_be_immutable
class menuButtonItem extends StatelessWidget {
  menuButtonItem({@required this.onPressed, this.image, this.text});
  final GestureTapCallback onPressed;
  String image;
  String text;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Column(
        children: <Widget>[
          Image.asset(
            image,
            height: 35,
            width: 35,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(text,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 10,
              )),
        ],
      ),
    );
  }
}


// ignore: must_be_immutable, camel_case_types
class custom_list_tile extends StatelessWidget {
  custom_list_tile({this.onPressed,this.text});
  final GestureTapCallback onPressed;
  String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(text),


      ),
    );
//    return FlatButton(
//      onPressed: onPressed,
//      child: Container(
//        width: MediaQuery.of(context).size.width,
//        decoration: BoxDecoration(
//          color: Colors.white,
//            border: Border(bottom: BorderSide(
//              color: Color(0xFF333333),
//            ))
//        ),
//        child: Padding(
//          padding: const EdgeInsets.all(32.0),
//          child: Text(text, style: TextStyle(color: Colors.black),),
//        ),
//      ),
//    );
  }
}