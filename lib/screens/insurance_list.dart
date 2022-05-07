// import 'package:autoloop/company_card.dart';
import 'package:autoloop_mobile/screens/company_card.dart';
import 'package:flutter/material.dart';

class InsuranceList extends StatelessWidget {
  const InsuranceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Insurance Companies"),
        ),
        body: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: CompanyCard(
                companyImage: "images/Logo-access.png",
                companyName: "companyName",
                price: "price"),
          );
        }));
  }

  TextStyle _textStyle(double size) {
    return TextStyle(color: Colors.white, fontSize: size);
  }
}
