import 'package:autoloop_mobile/components/rectangular_button.dart';
import 'package:autoloop_mobile/screens/homepage.dart';
import 'package:flutter/material.dart';

class CheckEmailPage extends StatelessWidget {
  const CheckEmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width;
    // width = MediaQuery.of(context).size.width;

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
                const SizedBox(
                  // width: width * 0.7,
                  child: Text(
                    "Check your Email",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF202C39),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  "Your documents have been sent to your email",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF202C39),
                  ),
                  textAlign: TextAlign.center,
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
                          builder: (context) => const Homepage(),
                        ),
                      );
                    },
                    text: "Back to home",
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
