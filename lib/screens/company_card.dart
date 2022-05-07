import 'package:flutter/material.dart';

class CompanyCard extends StatelessWidget {
  final String companyImage;
  final String companyName;
  final String price;

  const CompanyCard(
      {Key? key,
      required this.companyImage,
      required this.companyName,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: InkWell(
            child: Container(
          height: 56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: 56,
                  child: Image.asset(
                    companyImage,
                    fit: BoxFit.cover,
                  )),
              Column(
                children: [Text(companyName), Text(price)],
              ),
              const Icon(Icons.chevron_right)
            ],
          ),
        )),
      ),
    );
  }
}
