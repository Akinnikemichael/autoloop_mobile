import 'package:autoloop_mobile/components/rectangular_button.dart';
import 'package:autoloop_mobile/components/reusable_input_field.dart';
import 'package:autoloop_mobile/screens/homepage.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class InsurancePaperworkPage extends StatelessWidget {
  const InsurancePaperworkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Paperwork",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 16.0,
              )),
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
          backgroundColor: const Color(0XFF202C39),
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(),
            child: SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                const SizedBox(height: 32.0),
                Row(
                  children: const [
                    Text(
                      "Vehicle’s registration plate",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF202C39),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                const ReusableInputField(
                  borderRadius: 8.0,
                  enabledBorderColor: Color(0xFFF9F8F8),
                  obscureText: false,
                  labelColor: Color(0XFFE5E5E5),
                  hintText: "Enter here",
                  height: 50.0,
                ),
                const SizedBox(height: 40.0),
                Row(
                  children: const [
                    Text(
                      "Vehicle Information",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF202C39),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                const ReusableInputField(
                  borderRadius: 8.0,
                  enabledBorderColor: Color(0xFFF9F8F8),
                  obscureText: false,
                  labelColor: Color(0XFFE5E5E5),
                  hintText: "Brand",
                  height: 50.0,
                ),
                const SizedBox(height: 16.0),
                const ReusableInputField(
                  borderRadius: 8.0,
                  enabledBorderColor: Color(0xFFF9F8F8),
                  obscureText: false,
                  labelColor: Color(0XFFE5E5E5),
                  hintText: "Model",
                  height: 50.0,
                ),
                const SizedBox(height: 16.0),
                const ReusableInputField(
                  borderRadius: 8.0,
                  enabledBorderColor: Color(0xFFF9F8F8),
                  obscureText: false,
                  labelColor: Color(0XFFE5E5E5),
                  hintText: "Year of manufacture",
                  height: 50.0,
                ),
                const SizedBox(height: 16.0),
                const ReusableInputField(
                  borderRadius: 8.0,
                  enabledBorderColor: Color(0xFFF9F8F8),
                  obscureText: false,
                  labelColor: Color(0XFFE5E5E5),
                  hintText: "VIN Number",
                  height: 50.0,
                ),
                const SizedBox(height: 40.0),
                Row(
                  children: const [
                    Text(
                      "Upload Means of Identification",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF202C39),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(10.0),
                  color: const Color(0XFF3772FF),
                  dashPattern: const [6, 6, 6, 6],
                  strokeCap: StrokeCap.round,
                  child: const SizedBox(
                    height: 105.0,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "Upload Document",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0XFF878787),
                            fontSize: 14.0),
                      ),
                    ),
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
                          builder: (context) => const Homepage(),
                        ),
                      );
                    },
                    text: "Submit",
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
