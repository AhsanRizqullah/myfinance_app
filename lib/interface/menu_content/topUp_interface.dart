import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfinance_app/interface/public_command.dart';

const TextStyle boldText = TextStyle(
  fontWeight: FontWeight.bold,
);

class TopUp extends StatefulWidget {
  @override
  _TopUpState createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {

  String _Tujuan;
  List<Map> _Dompet = [
    {"id": '1', "image": "assets/images/dono.png", "name": "Dono"},
    {"id": '2', "image": "assets/images/gopey.png", "name": "Gopey"},
    {"id": '3', "image": "assets/images/ova.png", "name": "Ova"},
  ];

  bool _hasBeenPressed25 = false;
  bool _hasBeenPressed50 = false;
  bool _hasBeenPressed75 = false;
  bool _hasBeenPressed100 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title : Text("MyFinance"),
        centerTitle: true,
        backgroundColor: Color(0xFF2B353D),
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      alignedDropdown: true,
                      child: DropdownButton<String>(
                        isDense: true,
                        hint: new Text("Pilih Dompet"),
                        value: _Tujuan,
                        onChanged: (String newValue) {
                          setState(() {
                            _Tujuan = newValue;
                          });

                          print(_Tujuan);
                        },
                        items: _Dompet.map((Map map) {
                          return new DropdownMenuItem<String>(
                              value: map["id"].toString(),

                              child: Row(
                                children: <Widget>[
                                  Image.asset(
                                    map["image"],
                                    height: 25,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(map["name"])),
                                ],
                              )
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(width: 10,),
                Expanded(
                  child: RaisedButton(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                            color: _hasBeenPressed25 ? Colors.indigo : Color(0xFF2B353D)
                        )
                    ),
                    child: RoundedContainer(
                      color: Colors.transparent,
                      margin: const EdgeInsets.symmetric(
                        vertical: 4.0,
                        horizontal: 4.0,
                      ), child: Text("Rp 25.000", style: TextStyle(color: _hasBeenPressed25 ? Colors.white : Colors.black,),),
                    ),
                    color: _hasBeenPressed25 ? Colors.indigo : Colors.white,
                    textColor: _hasBeenPressed25 ? Colors.white : Colors.black,
                    onPressed: () {
                      setState(() {
                        _hasBeenPressed25 = !_hasBeenPressed25;
                      });
                    },
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: RaisedButton(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                            color: _hasBeenPressed50 ? Colors.indigo : Color(0xFF2B353D)
                        )
                    ),
                    child: RoundedContainer(
                      color: Colors.transparent,
                      margin: const EdgeInsets.symmetric(
                        vertical: 4.0,
                        horizontal: 4.0,
                      ), child: Text("Rp 50.000", style: TextStyle(color: _hasBeenPressed50 ? Colors.white : Colors.black,),),
                    ),
                    color: _hasBeenPressed50 ? Colors.indigo : Colors.white,
                    textColor: _hasBeenPressed50 ? Colors.white : Colors.black,
                    onPressed: () {
                      setState(() {
                        _hasBeenPressed50 = !_hasBeenPressed50;
                      });
                    },
                  ),
                ),
                SizedBox(width: 10,),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                SizedBox(width: 10,),
                Expanded(
                  child: RaisedButton(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                            color: _hasBeenPressed75 ? Colors.indigo : Color(0xFF2B353D)
                        )
                    ),
                    child: RoundedContainer(
                      color: Colors.transparent,
                      margin: const EdgeInsets.symmetric(
                        vertical: 4.0,
                        horizontal: 4.0,
                      ), child: Text("Rp 75.000",
                      style: TextStyle(color: _hasBeenPressed75 ? Colors.white : Colors.black,
                      ),),
                    ),
                    color: _hasBeenPressed75 ? Colors.indigo : Colors.white,
                    textColor: _hasBeenPressed75 ? Colors.white : Colors.black,
                    onPressed: () {
                      setState(() {
                        _hasBeenPressed75 = !_hasBeenPressed75;
                      });
                    },
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: RaisedButton(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                            color: _hasBeenPressed100 ? Colors.indigo : Color(0xFF2B353D)
                        )
                    ),
                    child: RoundedContainer(
                      color: Colors.transparent,
                      margin: const EdgeInsets.symmetric(
                        vertical: 4.0,
                        horizontal: 4.0,
                      ), child: Text("Rp 75.000",
                      style: TextStyle(color: _hasBeenPressed100 ? Colors.white : Colors.black,
                      ),),
                    ),
                    color: _hasBeenPressed100 ? Colors.indigo : Colors.white,
                    textColor: _hasBeenPressed100 ? Colors.white : Colors.black,
                    onPressed: () {
                      setState(() {
                        _hasBeenPressed100 = !_hasBeenPressed100;
                      });
                    },
                  ),
                ),
                SizedBox(width: 10,),
              ],
            ),
            const SizedBox(height: 30.0),
            RoundedContainer(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image.asset(
                  "assets/images/bca.png",
                  height: 30,
                ),
                title: Text(""),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            RoundedContainer(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image.asset(
                  "assets/images/bni.png",
                  height: 30,
                ),
                // title: Text("Bca"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            RoundedContainer(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image.asset(
                  "assets/images/bsi.jpg",
                  height: 37,
                ),
                // title: Text("bca"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 32.0,
              ),
              child: RaisedButton(
                  elevation: 0,
                  padding: const EdgeInsets.all(24.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text("Continue"),
                  color: Color(0xFF40C326),
                  textColor: Colors.white,
                  onPressed: () {
                    toVerification(context);
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    Key key,
    @required this.child,
    this.height,
    this.width,
    this.color = Colors.white,
    this.padding = const EdgeInsets.all(16.0),
    this.margin,
    this.borderRadius,
    this.alignment,
    this.elevation,
  }) : super(key: key);
  final Widget child;
  final double width;
  final double height;
  final Color color;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final BorderRadius borderRadius;
  final AlignmentGeometry alignment;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: margin ?? const EdgeInsets.all(0),
      color: color,
      elevation: elevation ?? 0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(20.0),
      ),
      child: Container(
        alignment: alignment,
        height: height,
        width: width,
        padding: padding,
        child: child,
      ),
    );
  }
}
