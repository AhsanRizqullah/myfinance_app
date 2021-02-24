import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myfinance_app/interface/public_command.dart';



class Listrik extends StatefulWidget {
  @override
  _ListrikState createState() => _ListrikState();
}

String _Pembayaran;
List<Map> _Metode = [
  {"id": '1', "image": "assets/images/dono.png", "name": "Dono"},
  {"id": '2', "image": "assets/images/gopey.png", "name": "Gopey"},
  {"id": '3', "image": "assets/images/ova.png", "name": "Ova"},
];

bool _hasBeenPressed20 = false;
bool _hasBeenPressed50 = false;
bool _hasBeenPressed100 = false;
bool _hasBeenPressed200 = false;
bool _hasBeenPressed500 = false;

class _ListrikState extends State<Listrik> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title : Text("MyFinance"),
            centerTitle: true,
            backgroundColor: Color(0xFF2B353D),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.transparent),
                  borderRadius: BorderRadius.circular(0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.ideographic,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text("Nomor Meter/ID Pelanggan", style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  ),
                  TextField(
                    // decoration: new InputDecoration(labelText: "Isi Nomor ID"),
                      style: TextStyle(fontSize:18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly]
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Produk", style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
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
                                color: Color(0xFF2B353D),
                              )
                          ),
                          child: RoundedContainer(
                            color: Colors.transparent,
                            margin: const EdgeInsets.symmetric(
                              vertical: 4.0,
                              horizontal: 4.0,
                            ),
                            child:
                            Column(
                              children: [
                                Text("Rp 20.000",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: _hasBeenPressed20 ? Colors.white : Colors.black,),),
                                SizedBox(height: 5.0),
                                Text("Rp 22.500", style: TextStyle(color: _hasBeenPressed20 ? Colors.white : Colors.black,),),
                              ],
                            ),
                          ),
                          color: _hasBeenPressed20 ? Color(0xFF2B353D) : Colors.white,
                          textColor: _hasBeenPressed20 ? Colors.white : Colors.black,
                          onPressed: () {
                            setState(() {
                              _hasBeenPressed20 = !_hasBeenPressed20;
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
                                color: Color(0xFF2B353D),
                              )
                          ),
                          child: RoundedContainer(
                            color: Colors.transparent,
                            margin: const EdgeInsets.symmetric(
                              vertical: 4.0,
                              horizontal: 4.0,
                            ),
                            child: Column(
                              children: [
                                Text("Rp 50.000",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: _hasBeenPressed50 ? Colors.white : Colors.black,),),
                                SizedBox(height: 5.0),
                                Text("Rp 52.500", style: TextStyle(color: _hasBeenPressed50 ? Colors.white : Colors.black,),),
                              ],
                            ),
                          ),
                          color: _hasBeenPressed50 ? Color(0xFF2B353D) : Colors.white,
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
                                color: Color(0xFF2B353D),
                              )
                          ),
                          child: RoundedContainer(
                            color: Colors.transparent,
                            margin: const EdgeInsets.symmetric(
                              vertical: 4.0,
                              horizontal: 4.0,
                            ),
                            child: Column(
                              children: [
                                Text("Rp. 100.000",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: _hasBeenPressed100 ? Colors.white : Colors.black,),),
                                SizedBox(height: 5.0),
                                Text("Rp 102.500", style: TextStyle(color: _hasBeenPressed100 ? Colors.white : Colors.black,),),
                              ],
                            ),
                          ),
                          color: _hasBeenPressed100 ? Color(0xFF2B353D) : Colors.white,
                          textColor: _hasBeenPressed100 ? Colors.white : Colors.black,
                          onPressed: () {
                            setState(() {
                              _hasBeenPressed100 = !_hasBeenPressed100;
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
                                color: Color(0xFF2B353D),
                              )
                          ),
                          child: RoundedContainer(
                            color: Colors.transparent,
                            margin: const EdgeInsets.symmetric(
                              vertical: 4.0,
                              horizontal: 4.0,
                            ),
                            child: Column(
                              children: [
                                Text("Rp 250.000",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: _hasBeenPressed200 ? Colors.white : Colors.black,),),
                                SizedBox(height: 5.0),
                                Text("Rp 250.000", style: TextStyle(color: _hasBeenPressed200 ? Colors.white : Colors.black,),),
                              ],
                            ),
                          ),
                          color: _hasBeenPressed200 ? Color(0xFF2B353D) : Colors.white,
                          textColor: _hasBeenPressed200 ? Colors.white : Colors.black,
                          onPressed: () {
                            setState(() {
                              _hasBeenPressed200 = !_hasBeenPressed200;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 10,),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Expanded(
                        child: RaisedButton(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: Color(0xFF2B353D),
                              )
                          ),
                          child: RoundedContainer(
                            color: Colors.transparent,
                            margin: const EdgeInsets.symmetric(
                              vertical: 4.0,
                              horizontal: 4.0,
                            ),
                            child: Column(
                              children: [
                                Text("Rp 500.000",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: _hasBeenPressed500 ? Colors.white : Colors.black,),),
                                SizedBox(height: 5.0),
                                Text("Rp 500.000",
                                  style:
                                  TextStyle(color: _hasBeenPressed500 ? Colors.white : Colors.black,),),
                              ],
                            ),
                          ),
                          color: _hasBeenPressed500 ? Color(0xFF2B353D) : Colors.white,
                          textColor: _hasBeenPressed500 ? Colors.white : Colors.black,
                          onPressed: () {
                            setState(() {
                              _hasBeenPressed500 = !_hasBeenPressed500;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 10,),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Pembayaran", style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: DropdownButtonHideUnderline(
                          child: ButtonTheme(
                            alignedDropdown: true,
                            child: DropdownButton<String>(
                              isDense: true,
                              hint: new Text("Metode Pembayaran"),
                              value: _Pembayaran,
                              onChanged: (String newValue) {
                                setState(() {
                                  _Pembayaran = newValue;
                                });

                                print(_Pembayaran);
                              },
                              items: _Metode.map((Map map) {
                                return new DropdownMenuItem<String>(
                                    value: map["id"].toString(),

                                    child: Row(
                                      children: <Widget>[
                                        Image.asset(
                                          map["image"],
                                          height: 30,
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
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RaisedButton(
                        onPressed: () {
                          toVerification(context);
                        },
                        color: Color(0xFF40C326),
                        child: Text('Bayar',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                            )
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
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
