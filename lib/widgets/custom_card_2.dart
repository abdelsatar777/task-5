import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  final String title;
  final String description;
  final String imfPath;

  const CustomCard2(
      {super.key,
      required this.title,
      required this.description,
      required this.imfPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(70),
          topLeft: Radius.circular(70),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(70),
              topLeft: Radius.circular(70),
            ),
            child: Image.asset(
              imfPath,
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
