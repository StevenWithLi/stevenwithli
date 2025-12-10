import 'package:flutter/material.dart';

class MainListViewFour extends StatefulWidget {
  const MainListViewFour({super.key});

  @override
  State<MainListViewFour> createState() => _MainListViewFourState();
}

class _MainListViewFourState extends State<MainListViewFour> {
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
