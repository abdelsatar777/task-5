import 'package:flutter/material.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset(
                'assets/WhatsApp Image 2024-07-03 at 19.56.48_ae64950a.jpg',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70.0, left: 50),
              child: Text(
                'Health',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
