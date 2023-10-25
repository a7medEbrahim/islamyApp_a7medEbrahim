import 'package:flutter/material.dart';
import 'package:islamyapp/MyThemeData.dart';
import 'package:islamyapp/Providers/myProvider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                provider.changeLanguage('en');
              },
              child: Row(
                children: [
                  Text(
                    provider.languageCode == "en" ? "Englis" : "انجليزي",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: provider.languageCode == "en"
                            ? MyThemeData.primaryColor
                            : Colors.black),
                  ),
                  Spacer(),
                  provider.languageCode == "en"
                      ? Icon(
                          Icons.done,
                          color: MyThemeData.primaryColor,
                          size: 35,
                        )
                      : SizedBox.shrink()
                ],
              ),
            ),
            InkWell(
              onTap: () {
                provider.changeLanguage('ar');
              },
              child: Row(
                children: [
                  Text(provider.languageCode == "en" ? "Arabic" : "عربي",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: provider.languageCode == "en"
                              ? Colors.black
                              : MyThemeData.primaryColor)),
                  Spacer(),
                  provider.languageCode == "en"
                      ? SizedBox.shrink()
                      : Icon(
                          Icons.done,
                          color: MyThemeData.primaryColor,
                          size: 35,
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
