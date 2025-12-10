import 'package:flutter/material.dart';

class MainListViewThree extends StatefulWidget {
  const MainListViewThree({super.key});

  @override
  State<MainListViewThree> createState() => _MainListViewThreeState();
}

class _MainListViewThreeState extends State<MainListViewThree> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Center(
            child: Text('1'),
          ),
        ),
        Container(
          child: Center(
            child: Text('2'),
          ),
        ),
        Container(
          child: Center(
            child: Text('3'),
          ),
        ),
        Container(
          child: Center(
            child: Text('4'),
          ),
        ),
        Container(
          child: Center(
            child: Text('5'),
          ),
        ),
        Container(
          child: Center(
            child: Text('6'),
          ),
        )
      ],
    );
  }
}
