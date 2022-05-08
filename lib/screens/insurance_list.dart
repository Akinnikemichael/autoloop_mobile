// import 'package:autoloop/company_card.dart';
import 'package:autoloop_mobile/screens/company_card.dart';
import 'package:flutter/material.dart';

class InsuranceList extends StatelessWidget {
  const InsuranceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff202C39),
        leading: Icon(Icons.arrow_back),
        title: const Text("Select Offering"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: CompanyCard(
                companyImage: "images/Logo-access.png",
                companyName: "Insurance from Alliance",
                price: "40 GHc",
                frequency: "/ year"),
          );
        },
      ),
    );
  }
}
