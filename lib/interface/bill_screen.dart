import 'dart:ui';

import 'package:flutter/material.dart';

class Bill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Transaksi',
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: false,
        backgroundColor: Color(0xFF2B353D),
        elevation: 0,
      ),
      body: stacker(),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 220,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/images/background.png'))),
        ),
      ],
    );
  }
}

class stacker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Content(),
        Struk(),
      ],
    );
  }
}

class Struk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 45),
      child: Container(
        height: 400,
        width: 500,
        decoration: BoxDecoration(
          color: Color(0xFFF5F5F5),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(0.0, 3.0),
                blurRadius: 15.0),
          ],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/dono.png',
                height: 80,
                width: 80,
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Row(
                  children: <Widget>[
                    Text(
                      "20 Jan 2021 : 09:20",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Dana ID 08***1759",
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 290,
                height: 1,
                color: Color(0xFFBBBBBB),
              ),
              Textdata(),
            ],
          ),
        ),
      ),
    );
  }
}

class Textdata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15),
              child: Row(
                children: [
                  Text('Transaksi Kadaluarsa',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15),
              child: Row(
                children: [
                  Text('TOP UP VIA ALFAMART 50.000 08***1759',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15),
              child: Row(
                children: [
                  Text('ALFAMART',
                    style: TextStyle(
                      letterSpacing: 0.5,
                      fontSize: 14,
                    ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Container(
                color: Color(0xFFC3D5F5),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                  child: Row(
                    children: [
                      Text('Total Bayar',
                        style: TextStyle(
                            letterSpacing: 0.5,
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                        ),),
                      SizedBox(width: 110,),
                      Text('Rp.50.000',
                        style: TextStyle(
                          letterSpacing: 0.5,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 290,
                height: 1,
                color: Color(0xFFBBBBBB),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: Row(
                children: [
                  Text('Detail Transaksi',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}
