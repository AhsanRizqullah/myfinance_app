import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfinance_app/interface/public_command.dart';

class Pulsa extends StatefulWidget {
  @override
  _PulsaState createState() => _PulsaState();
}

class _PulsaState extends State<Pulsa> {

  String _Provider;
  List<Map> _myJson = [
    {"id": '1', "image": "assets/images/telkomsel.png", "name": "Tekomsel"},
    {"id": '2', "image": "assets/images/xl.png", "name": "Xl"},
    {"id": '3', "image": "assets/images/indosat.png", "name": "Indosat"},
  ];

  String _Pembayaran;
  List<Map> _Metode = [
    {"id": '1', "image": "assets/images/dono.png", "name": "Dono"},
    {"id": '2', "image": "assets/images/gopey.png", "name": "Gopey"},
    {"id": '3', "image": "assets/images/ova.png", "name": "Ova"},
  ];

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
        // leading: ConstrainedBox(
        //   constraints: BoxConstraints(
        //     minWidth: 44,
        //     minHeight: 44,
        //     maxWidth: 64,
        //     maxHeight: 64,
        //   ),
        // ),
        // backgroundColor: Color(0xFF2B353D),
        // elevation: 0,
        // title: Text("MyFinance"),
        // actions: [
        //     Container(
        //       child: IconButton(
        //         onPressed: null,
        //         icon: Icon(
        //           Icons.mail_outline,
        //           color: Colors.white,
        //         ),
        //       ),
        //     ),
        // ],
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
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
              Text("Nomor Hp", style: TextStyle(
                fontSize: 16,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              ),
              TextField(
                style: TextStyle(fontSize:18.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("Provider", style: TextStyle(
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
                          hint: new Text("Pilih Provider"),
                          value: _Provider,
                          onChanged: (String newValue) {
                            setState(() {
                              _Provider = newValue;
                            });

                            print(_Provider);
                          },
                          items: _myJson.map((Map map) {
                            return new DropdownMenuItem<String>(
                                value: map["id"].toString(),

                                child: Row(
                                  children: <Widget>[
                                    Image.asset(
                                      map["image"],
                                      height: 25,
                                    ),
                                    // Container(
                                    //     margin: EdgeInsets.only(left: 10),
                                    //     child: Text(map["name"])),
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
                height: 30,
              ),
              Text("Nominal Pulsa", style: TextStyle(
                fontSize: 16,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              ),
              TextField(
                style: TextStyle(fontSize:18.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto",
                ),
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
                    child: const Text('Bayar',
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
    );
  }
}
