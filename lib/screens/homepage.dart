import 'package:autoloop_mobile/components/rectangular_button.dart';
import 'package:autoloop_mobile/screens/select_insurance_page.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

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
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: const Text(
                                "What would you love to insure today?",
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
                        height: height * 0.63,
                        width: width,
                        padding: const EdgeInsets.all(16.0),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  vehicleCard("images/car.png", "Car"),
                                  vehicleCard("images/bus.png", "Bus"),
                                ],
                              ),
                              const SizedBox(height: 20.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  vehicleCard("images/bike.png", "Bike"),
                                  vehicleCard("images/truck.png", "Truck"),
                                ],
                              ),
                              const SizedBox(height: 132.0),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 52.0),
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
                                            const SelectInsurancePage(),
                                      ),
                                    );
                                  },
                                  text: "Proceed",
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

  Widget vehicleCard(String vehicleImageUrl, String vehicleName) {
    return Container(
      height: 100,
      width: 172,
      decoration: BoxDecoration(
        color: const Color(0XFFF7EAFF),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 100,
              child: Image(image: AssetImage(vehicleImageUrl)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Text(
                vehicleName,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0XFF202C39),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
