import 'package:flutter/material.dart';

class CompanyCard extends StatelessWidget {
  final String companyImage;
  final String companyName;
  final String price;
  final String frequency;

  const CompanyCard(
      {Key? key,
      required this.companyImage,
      required this.companyName,
      required this.price,
      required this.frequency})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          height: 64,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  companyImage,
                  fit: BoxFit.cover,
                  height: 56,
                  width: 56,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Text(
                          companyName,
                          style: const TextStyle(
                              color: Color(0xff202C39),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            price,
                            style: const TextStyle(
                                color: Color(0xff878787), fontSize: 14),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: Text(
                              frequency,
                              style: const TextStyle(
                                  color: Color(0xff878787), fontSize: 14),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Icon(Icons.more_vert),
            ],
          ),
        ),
      ),
    );
  }
}
