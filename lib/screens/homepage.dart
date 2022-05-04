import 'package:autoloop_mobile/components/rectangular_button.dart';
import 'package:autoloop_mobile/components/reusable_input_field.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Welcome to autoloop"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Reusable Buttons"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
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
                padding: const EdgeInsets.all(10.0),
                child: ReusableButton(
                  backgroundColor: Colors.white,
                  borderColor: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  height: 44.0,
                  onPressed: () {},
                  text: "Back",
                  textColor: const Color(0XFF202C39),
                  width: double.infinity,
                  hasGradient: false,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ReusableButton(
                  backgroundColor: const Color(0XFF202C39),
                  borderColor: const Color(0XFF202C39),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  height: 44.0,
                  onPressed: () {},
                  text: "Purchase",
                  textColor: Colors.white,
                  width: double.infinity,
                  hasGradient: false,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ReusableButton(
                  backgroundColor: const Color(0XFF202C39),
                  borderColor: const Color(0XFF202C39),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  height: 44.0,
                  onPressed: () {},
                  text: "Proceed to Paperwork",
                  textColor: Colors.white,
                  width: double.infinity,
                  hasGradient: false,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ReusableButton(
                  backgroundColor: const Color(0XFF202C39),
                  borderColor: const Color(0XFF202C39),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  height: 44.0,
                  onPressed: () {},
                  text: "Submit",
                  textColor: Colors.white,
                  width: double.infinity,
                  hasGradient: false,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              const SizedBox(height: 30.0),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Reusable Input fields"),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: ReusableInputField(
                  borderRadius: 8.0,
                  enabledBorderColor: Color(0xFFF9F8F8),
                  obscureText: false,
                  labelColor: Color(0XFFE5E5E5),
                  hintText: "Enter here",
                  height: 50.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
