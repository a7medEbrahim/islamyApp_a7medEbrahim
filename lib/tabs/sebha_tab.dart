import 'dart:math';

import 'package:flutter/material.dart';

import '../MyThemeData.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  @override
  int counter = 0;

  int index = 0;
  double aa = 1;

  List<String> sebhaContent = [
    'الله اكبر',
    'الحمدلله',
    'سبحانه الله',
    'استغفر الله'
  ];

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 65),
                child: Image.asset(
                  'assets/images/head_of_seb7a.png',
                ),
              ),
              Transform.rotate(
                  angle: -aa * pi / 16.5,
                  child: Image.asset('assets/images/body_of_seb7a.png')),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 75,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color.fromRGBO(183, 147, 95, 145),
            ),
            child: Center(
                child: Text(
                  '$counter',
                  style: Theme.of(context).textTheme.bodyLarge,
                )),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: MyThemeData.primaryColor),
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
              child: InkWell(
                onTap: () {
                  aa += 1;
                  if (counter == 32) {
                    if (index == sebhaContent.length - 1) {
                      index = 0;
                      counter = 0;
                    } else {
                      index++;
                      counter = 0;
                    }
                  } else {
                    counter++;
                  }
                  setState(() {});
                },
                child: Text(
                  sebhaContent[index],
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
