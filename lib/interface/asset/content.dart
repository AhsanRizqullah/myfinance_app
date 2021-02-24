import 'package:flutter/material.dart';
import 'package:myfinance_app/interface/asset/custom_widget.dart';
import 'package:myfinance_app/interface/public_command.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 44,
            minHeight: 44,
            maxWidth: 64,
            maxHeight: 64,
          ),
          child: Image.asset('assets/images/my_finance_icon.png',
              fit: BoxFit.cover),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("MyFinance"),
        actions: [
          Container(
            child: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.mail_outline,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      backgroundColor: Color(0xFF2B353D),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/background.png'),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height - 250,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 500,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                topContent(),
//                SizedBox(
//                  height: 40,
//                ),
//                Flexible(
//                  child: Row(
//                    children: [
//                      Expanded(
//                        flex: 1,
//                        child: Container(),
//                      ),
//                      topButtonContent(),
//                      Expanded(
//                        flex: 1,
//                        child: Container(),
//                      ),
//                    ],
//                  ),
//                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width - 90),
                child: menuContent()),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types, must_be_immutable
class topContent extends StatefulWidget {


  @override
  _topContentState createState() => _topContentState();
}

// ignore: camel_case_types
class _topContentState extends State<topContent> {


  String textHolder = '0';

  void changeText() {
    setState(() {
      textHolder = '500.000';
    });
  }

  void changeText1() {
    setState(() {
      textHolder = '200.000';
    });
  }

  void changeText2() {
    setState(() {
      textHolder = '100.000';
    });
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 24, top: 32),
            child: Text(
              "Hi, Fulan",
              style: TextStyle(fontSize: 30, color: Colors.white),
            )),
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Text(
            'You Have',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Container(
            child: Text(
              "RP" + ". " + '$textHolder',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Text(
            'In ova',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        Padding(
          padding:EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width - 345, vertical: 30),
          child: Container(
            child: Row(
              children: <Widget>[
                balanceButtton(
                  onPressed: () => changeText(),
                  image: "assets/images/dono.png",
                ),
                SizedBox(
                  width: 0,
                ),
                balanceButtton(
                    onPressed: () => changeText1(),
                    image: "assets/images/ova.png"),
                SizedBox(
                  width: 0,
                ),
                balanceButtton(
                    onPressed: () => changeText2(),
                    image: "assets/images/gopey.png"),
              ],
            ),
          ),
        )
      ],
    );
  }
}

// ignore: camel_case_types
class menuContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0.0, 3.0),
                  blurRadius: 15.0)
            ]),
        child: Container(
          child: Wrap(
            children: [
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        menuButtonItem(
                          onPressed: () {
                            toTopUp(context);
                          },
                          image: 'assets/images/topup.png',
                          text: 'Top up',
                        ),
                        menuButtonItem(
                          onPressed: () {
                            toListrik(context);
                          },
                          image: 'assets/images/electric.png',
                          text: 'Listrk',
                        ),
                        menuButtonItem(
                          onPressed: () {
                            toPulsa(context);
                          },
                          image: 'assets/images/pulsa.png',
                          text: 'Pulsa',
                        ),
                        menuButtonItem(
                          onPressed: () {
                            toInternet(context);
                          },
                          image: 'assets/images/internet.png',
                          text: 'Internet',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        menuButtonItem(
                          onPressed: null,
                          image: 'assets/images/water.png',
                          text: 'Air',
                        ),
                        menuButtonItem(
                          onPressed: () {
                            toBelanja(context);
                          },
                          image: 'assets/images/shopping.png',
                          text: 'Belanja',
                        ),
                        menuButtonItem(
                          onPressed: () {
                            toTransfer(context);
                          },
                          image: 'assets/images/transfer.png',
                          text: 'Transfer',
                        ),
                        menuButtonItem(
                          onPressed: null,
                          image: 'assets/images/more.png',
                          text: 'Lainnya',
                        ),
                      ],
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

//// ignore: camel_case_types
//class topButtonContent extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: Row(
//        children: <Widget>[
//          balanceButtton(
//            onPressed: null,
//            image: "assets/images/dono.png",
//          ),
//          SizedBox(
//            width: 0,
//          ),
//          balanceButtton(
//              onPressed: () => changeText(), image: "assets/images/ova.png"),
//          SizedBox(
//            width: 0,
//          ),
//          balanceButtton(
//              onPressed: () => changeText1(), image: "assets/images/gopey.png"),
//        ],
//      ),
//    );
//  }
//}
//



