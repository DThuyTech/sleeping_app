import 'package:flutter/material.dart';
import 'package:sleeping_app/common/constant/constant_varaiable.dart';

class SuperviseScreenWeek extends StatefulWidget {
  const SuperviseScreenWeek({super.key});

  @override
  State<SuperviseScreenWeek> createState() => _SuperviseScreenWeekState();
}

class _SuperviseScreenWeekState extends State<SuperviseScreenWeek> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Tuần này',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                    text: '7',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                    ),
                    children: [
                      TextSpan(
                        text: ' h ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      TextSpan(
                        text: '22',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                        ),
                      ),
                      TextSpan(
                        text: ' m ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ]),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Thời lượng trung binh',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.left),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 90,
              decoration: BoxDecoration(
                color: purpleButton3,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 80,
                    padding: EdgeInsets.all(16),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '70%',
                          style: TextStyle(
                              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Đúng giấc',
                          style: TextStyle(
                              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: purpleButton1,
                    ),
                    width: MediaQuery.sizeOf(context).width * 0.65,
                    height: 100,
                    padding: EdgeInsets.all(16),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '70%',
                          style: TextStyle(
                              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Thời lượng',
                          style: TextStyle(
                              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: purpleButton2,
                    ),
                    width: MediaQuery.sizeOf(context).width * 0.35,
                    height: 100,
                    padding: EdgeInsets.all(16),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '70%',
                          style: TextStyle(
                              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Trung bình ngủ',
                          style: TextStyle(
                              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
