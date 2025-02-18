import 'package:first_ui/row_item.dart';
import 'package:first_ui/vertical_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Withdraws requests',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/images/back_button.svg',
              height: 40,
              width: 40,
            ),
            onPressed: () {
              // Do something
            },
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RowItem(),
            VerticalItem(),
          ],
        ),
      ),
    );
  }
}
