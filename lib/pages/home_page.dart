import 'package:flutter/material.dart';
import 'package:task_5/widgets/custom_card_1.dart';
import 'package:task_5/widgets/custom_card_2.dart';

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
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomCard1();
                  },
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'General News',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return CustomCard2(
                    title: 'Sample Title $index',
                    description: 'Sample Description $index',
                    imfPath: 'assets/img/wallpaper.jpg',
                  );
                },
                childCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
