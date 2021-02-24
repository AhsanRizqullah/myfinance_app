import 'package:flutter/material.dart';
import 'package:myfinance_app/interface/public_command.dart';

class historyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Recent',
            style: TextStyle(
                color: Color(0xFFFFFFFFF), fontWeight: FontWeight.w400),
          ),
          backgroundColor: Color(0xFF2B353D),
          elevation: 0,
          leading: Container(
            width: 1,
          ),
        ),
        body: ListView(
          children: <Widget>[
            GestureDetector(
              onTap: null,
              child: Listview(
                gambar: 'assets/images/dono.png',
                judul: 'Isi Saldo',
                deksripsi: "20 Jan 2021 : 09:20",
              ),
            ),
            GestureDetector(
              onTap: (){
                toBill(context);
              },
              child: Listview(
                gambar: 'assets/images/dono.png',
                judul: 'Isi Saldo',
                deksripsi: "20 Jan 2021 : 09:20",
              ),
            ),
            GestureDetector(
              onTap: (){
                toBill(context);
              },
              child: Listview(
                gambar: 'assets/images/dono.png',
                judul: 'Isi Saldo',
                deksripsi: "20 Jan 2021 : 09:20",
              ),
            ),
            GestureDetector(
              onTap: (){
                toBill(context);
              },
              child: Listview(
                gambar: 'assets/images/dono.png',
                judul: 'Isi Saldo',
                deksripsi: "20 Jan 2021 : 09:20",
              ),
            ),
            GestureDetector(
              onTap: (){
                toBill(context);
              },
              child: Listview(
                gambar: 'assets/images/dono.png',
                judul: 'Isi Saldo',
                deksripsi: "20 Jan 2021 : 09:20",
              ),
            ),
            GestureDetector(
              onTap: (){
                toBill(context);
              },
              child: Listview(
                gambar: 'assets/images/dono.png',
                judul: 'Isi Saldo',
                deksripsi: "20 Jan 2021 : 09:20",
              ),
            ),
            GestureDetector(
              onTap: (){
                toBill(context);
              },
              child: Listview(
                gambar: 'assets/images/dono.png',
                judul: 'Isi Saldo',
                deksripsi: "20 Jan 2021 : 09:20",
              ),
            ),
            GestureDetector(
              onTap: (){
                toBill(context);
              },
              child: Listview(
                gambar: 'assets/images/dono.png',
                judul: 'Isi Saldo',
                deksripsi: "20 Jan 2021 : 09:20",
              ),
            ),
            GestureDetector(
              onTap: (){
                toBill(context);
              },
              child: Listview(
                gambar: 'assets/images/dono.png',
                judul: 'Isi Saldo',
                deksripsi: "20 Jan 2021 : 09:20",
              ),
            ),
            GestureDetector(
              onTap: (){
                toBill(context);
              },
              child: Listview(
                gambar: 'assets/images/dono.png',
                judul: 'Isi Saldo',
                deksripsi: "20 Jan 2021 : 09:20",
              ),
            ),
          ],
        ));
  }
}

class Listview extends StatelessWidget {
  Listview({
    this.gambar,
    this.judul,
    this.deksripsi,
  });

  final String gambar;
  final String judul;
  final String deksripsi;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 60,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: Color(0xFFc4c4c4),
      ))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            Column(
              children: <Widget>[
                new Image.asset(
                  gambar,
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
                  judul,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  deksripsi,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
                ),
              ],
            ),
            SizedBox(
              width: 32,
            ),
            Container(
              child: Text(
                'Rp,50.000',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
