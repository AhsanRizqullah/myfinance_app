import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myfinance_app/interface/public_command.dart';


class Verification extends StatefulWidget{
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.only(top: 30.0, right: 20.0, left: 20.0, bottom: 20.0),
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/dono.png',
              height: 50,
              alignment: Alignment.center,),
            SizedBox(height: 40.0,),
            Text(
              "Mohon Masukan nomer telpon Dano Kamu",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              ),
            ),
            SizedBox(
              height: 30,
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
            SizedBox(height: 100,),
            FlatButton(
              onPressed: (){
                toVerificationPin(context);
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('LANJUT',
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
                  color: Color(0xFF2B353D),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


