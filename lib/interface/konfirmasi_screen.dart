import 'package:flutter/material.dart';
import 'package:myfinance_app/interface/public_command.dart';

class Konfirmasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Konfrimasi Pembayaran ',
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: false,
        backgroundColor: Color(0xFF2B353D),
        elevation: 0,
      ),
      body: Content(),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "Saya Akan Membayar Dengan",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(0.0, 3.0),
                      blurRadius: 15.0),
                ],
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  children: [
                    Column(
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/dono.png',
                          width: 66,
                          height: 60,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Saldo Dana",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "(Rp.100.000)",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Text(
                  "Rincian Biaya",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                )
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFF6F6F6), width: 1),
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Jumlah",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Text(
                      "Rp.52.000",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),Container(
              height: 250,
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xFFF6F6F6), width: 1.3),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Saldo Dana",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Text(
                          "Rp.-52.000",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            FlatButton(
              onPressed: (){
                toHomeAgain(context);
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Bayar',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),),
                  ],
                ),
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF40C326)
                  ,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
