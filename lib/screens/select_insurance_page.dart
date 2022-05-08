import 'package:autoloop_mobile/components/rectangular_button.dart';
import 'package:autoloop_mobile/screens/homepage.dart';
import 'package:flutter/material.dart';

class SelectInsurancePage extends StatelessWidget {
  const SelectInsurancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height, width;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(),
            child: SafeArea(
              child: Container(
                height: height,
                width: width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [Color(0XFF263E6B), Color(0XFF202C39)],
                  ),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 58.0),
                            child: Row(children: const [
                              Text("Hello Amen ",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 32.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white)),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Icon(Icons.waving_hand_sharp,
                                    color: Color(0XFFFFC82C), size: 25),
                              ),
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.55,
                              child: const Text(
                                "What type of insurance would you love to buy?",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0XFFF8F8F8),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: height * 0.35,
                      child: Container(
                        height: height * 0.65,
                        width: width,
                        padding: const EdgeInsets.all(16.0),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                        ),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0XFFF7EAFF),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "Third Party Insurance",
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0XFF202C39)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 16.0,
                                          left: 16.0,
                                          right: 16.0),
                                      child: Text(
                                        "Third-party insurance covers an individual or firm against a loss caused by some third party",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0XFF878787)),
                                      ),
                                    ),
                                  ]),
                                ),
                                const SizedBox(
                                  height: 24.0,
                                ),
                                Container(
                                  // height: 110.0,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0XFFF7EAFF),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "Comprehensive Insurance",
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0XFF202C39)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 16.0,
                                          left: 16.0,
                                          right: 16.0),
                                      child: Text(
                                        "A comprehensive car insurance is an extensive motor insurance plan that covers the insured person against both, own damages and any third party liabilities.",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0XFF878787)),
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 67.0),
                              child: ReusableButton(
                                backgroundColor: const Color(0XFF202C39),
                                borderColor: const Color(0XFF202C39),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                height: 44.0,
                                onPressed: () {},
                                text: "Proceed",
                                textColor: Colors.white,
                                width: double.infinity,
                                hasGradient: false,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: ReusableButton(
                                backgroundColor: Colors.white,
                                borderColor: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                height: 44.0,
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Homepage(),
                                    ),
                                  );
                                },
                                text: "Back",
                                textColor: const Color(0XFF202C39),
                                width: double.infinity,
                                hasGradient: false,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
