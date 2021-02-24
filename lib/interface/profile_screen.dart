import 'package:flutter/material.dart';
import 'package:myfinance_app/interface/asset/custom_widget.dart';

// ignore: camel_case_types
class profilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2B353D),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(),
      ),
      body: top(),
    );
  }
}

// ignore: camel_case_types
class top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 207,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: ExactAssetImage('assets/images/background.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 50,
              left: 40,
            ),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage('assets/images/profileimages.png'),

                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Fulan",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lihat Dan Edit Profile',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
            child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: listViewContent(),
        )),
      ],
    );
  }
}

// ignore: camel_case_types
class listViewContent extends StatefulWidget {
  @override
  _listViewContentState createState() => _listViewContentState();
}

// ignore: camel_case_types
class _listViewContentState extends State<listViewContent> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        custom_list_tile(
          text: 'Ubah Password',
        ),
        custom_list_tile(
          text: 'Kebijakan dan privasi',
        ),
        custom_list_tile(
          text: 'Syarat dan ketentuan',
        ),
        custom_list_tile(
          text: 'Pusat bantuan',
        )
      ],
    );
  }
}
