import 'package:appscare/widgets/controllers/size_config.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSliders extends StatelessWidget {
  const CarouselSliders({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        sliderText('A small step today is better than standing still.'),
        sliderText('You deserve peace, even on difficult days.'),
        sliderText('You don’t have to be strong all the time.'),
        sliderText(
            'Healing isn’t linear. What matters is that you keep going.'),
        sliderText(
            'Take three deep breaths before checking your phone in the morning.'),
      ],
      options: CarouselOptions(
        height: SizeConfig.height(50),
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 5),
        autoPlayAnimationDuration: Duration(milliseconds: 600),
        enlargeCenterPage: true,
        viewportFraction: 1,
      ),
    );
  }
}

Widget sliderText(String textTips) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: SizeConfig.width(30)),
    alignment: Alignment.centerLeft,
    child: Text(
      textTips,
      style:
          TextStyle(fontWeight: FontWeight.w500, fontSize: SizeConfig.text(15)),
    ),
  );
}
