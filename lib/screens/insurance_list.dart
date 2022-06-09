import 'package:autoloop_mobile/components/rectangular_button.dart';
import 'package:autoloop_mobile/components/company_card.dart';
import 'package:autoloop_mobile/screens/insurance_purchase_success.dart';
import 'package:flutter/material.dart';

class InsuranceList extends StatelessWidget {
  const InsuranceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff202C39),
        leading: IconButton(
          constraints: const BoxConstraints(),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(0.0),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 18,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text("Select Offering"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
            child: Column(
              children: [
                const CompanyCard(
                  companyImage: "images/Logo-access.png",
                  companyName: "Insurance from Alliance",
                  price: "40 GHc",
                  frequency: "/ year",
                ),
                const CompanyCard(
                  companyImage: "images/Logo-access.png",
                  companyName: "Insurance from Alliance",
                  price: "40 GHc",
                  frequency: "/ year",
                ),
                const CompanyCard(
                  companyImage: "images/Logo-access.png",
                  companyName: "Insurance from Alliance",
                  price: "40 GHc",
                  frequency: "/ year",
                ),
                const CompanyCard(
                  companyImage: "images/Logo-access.png",
                  companyName: "Insurance from Alliance",
                  price: "40 GHc",
                  frequency: "/ year",
                ),
                const CompanyCard(
                  companyImage: "images/Logo-access.png",
                  companyName: "Insurance from Alliance",
                  price: "40 GHc",
                  frequency: "/ year",
                ),
                const CompanyCard(
                  companyImage: "images/Logo-access.png",
                  companyName: "Insurance from Alliance",
                  price: "40 GHc",
                  frequency: "/ year",
                ),
                const CompanyCard(
                  companyImage: "images/Logo-access.png",
                  companyName: "Insurance from Alliance",
                  price: "40 GHc",
                  frequency: "/ year",
                ),
                const CompanyCard(
                  companyImage: "images/Logo-access.png",
                  companyName: "Insurance from Alliance",
                  price: "40 GHc",
                  frequency: "/ year",
                ),
                const CompanyCard(
                  companyImage: "images/Logo-access.png",
                  companyName: "Insurance from Alliance",
                  price: "40 GHc",
                  frequency: "/ year",
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ReusableButton(
                    backgroundColor: const Color(0XFF202C39),
                    borderColor: const Color(0XFF202C39),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    height: 44.0,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const InsurancePurchaseSuccessPage(),
                        ),
                      );
                    },
                    text: "Purchase",
                    textColor: Colors.white,
                    width: double.infinity,
                    hasGradient: false,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
