import 'package:flutter/material.dart';
import 'package:myfinance_app/interface/bill_screen.dart';
import 'package:myfinance_app/interface/konfirmasi_screen.dart';
import 'package:myfinance_app/interface/main_screen.dart';
import 'package:myfinance_app/interface/menu_content/belanja_interface.dart';
import 'package:myfinance_app/interface/menu_content/internet_interface.dart';
import 'package:myfinance_app/interface/menu_content/listrik_interface.dart';
import 'package:myfinance_app/interface/menu_content/topUp_interface.dart';
import 'package:myfinance_app/interface/menu_content/transfer_interface.dart';
import 'package:myfinance_app/interface/verification.dart';
import 'package:myfinance_app/interface/verificationPin_screeen.dart';
import 'menu_content/pulsa_interface.dart';


Future toPulsa(BuildContext context) async {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Pulsa()),
  );
}

Future toInternet(BuildContext context) async {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Internet()),
  );
}

Future toListrik(BuildContext context) async {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Listrik()),
  );
}

Future toBelanja(BuildContext context) async {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Belanja()),
  );
}

Future toTopUp(BuildContext context) async {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => TopUp()),
  );
}

Future toVerification(BuildContext context) async {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Verification()),
  );
}

Future toHomeAgain(BuildContext context) async {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MainMenu()),
  );
}

Future toBill(BuildContext context) async {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Bill()),
  );
}

Future toTransfer(BuildContext context) async {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Transfer()),
  );
}

Future toVerificationPin(BuildContext context) async {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Pin()),
  );
}