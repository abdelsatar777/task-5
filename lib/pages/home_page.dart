import 'package:flutter/material.dart';
import 'package:task_5/widgets/custom_card_1.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 165, 187, 210),
      appBar: AppBar(
        title: const Text(
          'News App',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        backgroundColor: const Color.fromARGB(255, 4, 125, 117),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 166,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomCard1();
                  },
                ),
              ),
              Text('General News',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
