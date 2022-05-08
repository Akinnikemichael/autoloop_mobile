import 'package:autoloop_mobile/components/rectangular_button.dart';
import 'package:autoloop_mobile/screens/insurance_paperwork_pages.dart';
import 'package:flutter/material.dart';

class InsurancePurchaseSuccessPage extends StatelessWidget {
  const InsurancePurchaseSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width;
    width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(),
            child: SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                const SizedBox(height: 80.0),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Image.asset("images/chilling-guy.png"),
                ),
                SizedBox(
                  width: width * 0.7,
                  child: const Text(
                    "Insurance successfully purchased",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF202C39),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48.0),
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
                          builder: (context) => const InsurancePaperworkPage(),
                        ),
                      );
                    },
                    text: "Proceed to Paperwork",
                    textColor: Colors.white,
                    width: double.infinity,
                    hasGradient: false,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ]),
            )),
          ),
        ),
      ),
    );
  }
}
