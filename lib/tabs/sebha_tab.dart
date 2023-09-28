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
          Image.asset('assets/images/SebhaImage.png'),
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
