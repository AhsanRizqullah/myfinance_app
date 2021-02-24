import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myfinance_app/interface/public_command.dart';

class Transfer extends StatefulWidget {
  @override
  _TransferState createState() => _TransferState();
}

class _TransferState extends State<Transfer> {

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
              Text("Dari", style: TextStyle(
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
                          hint: new Text("Pilih Dompet"),
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
              SizedBox(
                height: 30,
              ),
              Text("Nomor Dompet Digital", style: TextStyle(
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
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly]
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
              ),
              Text("Tujuan", style: TextStyle(
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
                          hint: new Text("Pilih Dompet"),
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
                height: 30,
              ),
              Text("Nominal Transfer", style: TextStyle(
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
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly]
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // RaisedButton(
                  //   onPressed: () {},
                  //   color: Colors.green,
                  //   child: const Text('Bayar',
                  //       style: TextStyle(
                  //           fontSize: 20,
                  //           fontFamily: "Roboto",
                  //           fontWeight: FontWeight.w600,
                  //           color: Colors.white
                  //       )
                  //   ),
                  //
                  // ),
                  InkWell(
                    child: new Container(
                      height: 50,
                      width: 360,
                      decoration: BoxDecoration(
                          color: Color(0xFF40C326),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10)),
                      alignment: Alignment.center,
                      child: new Text(
                        "Konfirmasi Pembayaran",
                        style:
                        new TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    onTap: () {
                      toVerification(context);

                    }
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
