import 'package:flutter/material.dart';

class VerticalItem extends StatelessWidget {
  const VerticalItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.40,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: ListView.builder(
        itemCount: 35,
        itemBuilder: (context, index) {
          return ListTile(
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/cip.png',
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'QNB',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              title: const FittedBox(
                child: Text(
                  'Referance ID : 995GJT98',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
              subtitle: FittedBox(
                child: Row(
                  children: [
                    const Text(
                      '13-5-2024',
                      style: TextStyle(
                          color: Color(0xffB2B2B2),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(width: 10),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: const Color(0xFF88EF98),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          'Success',
                          style: TextStyle(
                              color: Color(0xff309F1F),
                              fontSize: 10,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              trailing: FittedBox(
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'USD ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: '168',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: '.00',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}
