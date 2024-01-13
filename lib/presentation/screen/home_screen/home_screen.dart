import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sleeping_app/common/constant/constant_varaiable.dart';
import 'package:sleeping_app/presentation/screen/breath_screen/breath_screen.dart';
import 'package:sleeping_app/presentation/supervise_screen/supervise_screen.dart';
import 'package:sleeping_app/presentation/widget/button_chose.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Stream<String> _clock() async* {
    while (true) {
      await Future<void>.delayed(const Duration(seconds: 1));
      DateTime now = DateTime.now();
      // This will be displayed on the screen as current time
      yield "${now.hour} : ${now.minute} : ${now.second}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/bgFull.jpg"),
                  fit: BoxFit.cover,
                )),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Chào buổi tối',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.sizeOf(context).height * 0.3),
                      StreamBuilder(
                          stream: _clock(),
                          builder: (context, snapshot) {
                            return Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.symmetric(horizontal: 80),
                              child: Text(
                                "${snapshot.data}",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            );
                          }),
                      SizedBox(height: MediaQuery.sizeOf(context).height * 0.12),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Hãy thêm sắc màu vào giấc ngủ của bạn',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 5,
                                      color: Colors.black,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ButtonChose(
                                  voidCallback: () {},
                                  content: 'Âm thanh',
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 5,
                                      color: Colors.black,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ButtonChose(
                                  voidCallback: () {},
                                  content: 'Nhịp tim',
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 5,
                                      color: Colors.black,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ButtonChose(
                                  voidCallback: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => const BreathScreen()));
                                  },
                                  content: 'Tiếng thở',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Chọn giấc ngủ của bạn',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: purpleButton1,
                              ),
                              width: MediaQuery.sizeOf(context).width * 0.45,
                              height: MediaQuery.sizeOf(context).height * 0.15,
                              child: Stack(
                                children: [
                                  const Positioned(
                                    top: 5,
                                    left: 10,
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'NGỦ NHANH',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Từ 20p đến 2 tiếng',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 10,
                                      right: 10,
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30, vertical: 7),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: const Text(
                                            'Bắt đầu',
                                            style: TextStyle(
                                              color: purpleButton1,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: purpleButton1,
                              ),
                              width: MediaQuery.sizeOf(context).width * 0.45,
                              height: MediaQuery.sizeOf(context).height * 0.15,
                              child: Stack(
                                children: [
                                  const Positioned(
                                    top: 5,
                                    left: 10,
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'NGỦ SÂU',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Từ 4 đến 8 tiếng',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 10,
                                      right: 10,
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30, vertical: 7),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: const Text(
                                            'Bắt đầu',
                                            style: TextStyle(
                                              color: purpleButton1,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Xem chất lượng giấc ngủ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => const SuperviseScreen()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: purpleButton2,
                                ),
                                width: MediaQuery.sizeOf(context).width * 0.6,
                                height: MediaQuery.sizeOf(context).height * 0.15,
                                child: Stack(
                                  children: [
                                    const Positioned(
                                      top: 5,
                                      left: 10,
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'CHẤT LƯỢNG',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              '80%',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 35,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        bottom: 10,
                                        left: 0,
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                            child: LinearPercentIndicator(
                                              barRadius: const Radius.circular(10),
                                              width: MediaQuery.of(context).size.width * 0.55,
                                              animation: true,
                                              lineHeight: 15.0,
                                              animationDuration: 2500,
                                              percent: 0.8,
                                              progressColor: purpleButton1,
                                              backgroundColor: Colors.white,
                                            ),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: purpleButton2,
                              ),
                              width: MediaQuery.sizeOf(context).width * 0.3,
                              height: MediaQuery.sizeOf(context).height * 0.15,
                              child: Stack(
                                children: [
                                  const Positioned(
                                    top: 5,
                                    left: 10,
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'THỜI LƯỢNG',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            '78%',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 35,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 10,
                                      left: 0,
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                          child: LinearPercentIndicator(
                                            barRadius: const Radius.circular(10),
                                            width: MediaQuery.of(context).size.width * 0.28,
                                            animation: true,
                                            lineHeight: 15.0,
                                            animationDuration: 2500,
                                            percent: 0.8,
                                            progressColor: purpleButton1,
                                            backgroundColor: Colors.white,
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.6,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: purpleButton3,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage("assets/sleeping.png"),
                                )),
                              ),
                              const Text(
                                'Nào ngủ thôi',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
