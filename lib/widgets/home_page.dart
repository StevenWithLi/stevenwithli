import 'package:appscare/widgets/controllers/size_config.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int customPurple = 0xFF9673FE;
    int customBlue = 0xff665FEB;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            toolbarHeight: SizeConfig.height(60),
            title: Container(
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.width(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hey how are you feeling today'),
                  Text('STEVEN LI'),
                ],
              ),
            )),
        body: TabBarView(children: [
          ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: SizeConfig.width(20)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        colors: [Color(customPurple), Color(customBlue)])),
                padding: EdgeInsets.all(SizeConfig.width(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Daily Streak!',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.text(20)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '7 Days',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.text(25),
                              fontFamily: 'Monserrat',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '✨',
                          style: TextStyle(fontSize: SizeConfig.text(40)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: SizeConfig.height(20),
                  left: SizeConfig.width(20),
                  bottom: SizeConfig.height(6),
                ),
                child: Text(
                  'Quick Mood Check',
                  style: TextStyle(
                      fontSize: SizeConfig.text(18),
                      color: Colors.black87,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding: EdgeInsets.all(SizeConfig.width(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    moodBox('😊'),
                    moodBox('😌'),
                    moodBox('😐'),
                    moodBox('😔'),
                    moodBox('😰'),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.width(30),
                    vertical: SizeConfig.height(8)),
                child: Text(
                  'Featured Meditation',
                  style: TextStyle(
                      fontSize: SizeConfig.text(18),
                      color: Colors.black87,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                      right: SizeConfig.width(20), left: SizeConfig.width(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {},
                        child: SizedBox(
                          height: SizeConfig.height(180),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Container(
                                    padding:
                                        EdgeInsets.all(SizeConfig.height(15)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Morning Peace',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: SizeConfig.text(18),
                                          ),
                                        ),
                                        Text(
                                          '10 min • Guided',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: SizeConfig.text(15)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(100)),
                                  margin: EdgeInsets.all(SizeConfig.width(20)),
                                  width: SizeConfig.width(40),
                                  height: SizeConfig.height(40),
                                  child: Icon(
                                    Icons.play_arrow_rounded,
                                    size: SizeConfig.width(30),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: SizeConfig.height(20),
                        color: Colors.white,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              margin:
                                  EdgeInsets.only(right: SizeConfig.width(8)),
                              height: SizeConfig.height(135),
                              child: Center(
                                child: Text('Content-1'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              margin:
                                  EdgeInsets.only(left: SizeConfig.width(8)),
                              height: SizeConfig.height(135),
                              child: Center(
                                child: Text('Content-2'),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey),
                  height: SizeConfig.height(120),
                  margin: EdgeInsets.symmetric(
                      horizontal: SizeConfig.width(20),
                      vertical: SizeConfig.width(25)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // spacing: 20,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: SizeConfig.width(30),
                              right: SizeConfig.width(10),
                              top: SizeConfig.width(15),
                              bottom: SizeConfig.width(5),
                            ),
                            child: Icon(Icons.laptop_mac),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              // left: SizeConfig.width(30),
                              right: SizeConfig.width(30),
                              top: SizeConfig.width(15),
                              bottom: SizeConfig.width(5),
                            ),
                            child: Text(
                              'Daily Tips',
                              style: TextStyle(
                                  fontSize: SizeConfig.text(20),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      CarouselSlider(
                        items: [
                          motivationText(
                              'A small step today is better than standing still.'),
                          motivationText(
                              'You deserve peace, even on difficult days.'),
                          motivationText(
                              'You don’t have to be strong all the time.'),
                          motivationText(
                              'Healing isn’t linear. What matters is that you keep going.'),
                          motivationText(
                              'Take three deep breaths before checking your phone in the morning.'),
                        ],
                        options: CarouselOptions(
                          height: SizeConfig.height(50),
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 5),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 600),
                          enlargeCenterPage: true,
                          viewportFraction: 1,
                        ),
                      )
                    ],
                  ))
            ],
          ),
          ListView(
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
          ),
          ListView(
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
          ),
          ListView(
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
          )
        ]),
        bottomNavigationBar: SizedBox(
            height: SizeConfig.height(70),
            child: TabBar(
              labelColor: Colors.blue,
              dividerColor: Colors.transparent,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  child: SizedBox(
                    child: Icon(
                      Icons.home_outlined,
                      size: 38,
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    child: Icon(
                      Icons.show_chart,
                      size: 38,
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    child: Icon(
                      Icons.auto_stories,
                      size: 38,
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    child: Icon(
                      Icons.person,
                      size: 38,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

Widget moodBox(String emoji) {
  return InkWell(
    splashColor: Colors.grey.withOpacity(0.3),
    borderRadius: BorderRadius.circular(15),
    onTap: () {},
    child: Container(
      padding: EdgeInsets.all(SizeConfig.width(7)),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1.2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        emoji,
        style: TextStyle(fontSize: SizeConfig.text(30)),
      ),
    ),
  );
}

Widget motivationText(String textTips) {
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
