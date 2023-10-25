import 'package:flutter/material.dart';
import 'package:islamyapp/MyThemeData.dart';
import 'package:islamyapp/Providers/myProvider.dart';
import 'package:provider/provider.dart';

class MoodBottomSheet extends StatelessWidget {
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
                provider.changeMode(ThemeMode.light);
              },
              child: Row(
                children: [
                  Text(
                    provider.languageCode == "en" ? "Light" : "فاتح",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: provider.mode == ThemeMode.light
                            ? MyThemeData.primaryColor
                            : Colors.black),
                  ),
                  Spacer(),
                  provider.mode == ThemeMode.light
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
                provider.changeMode(ThemeMode.dark);
              },
              child: Row(
                children: [
                  Text(provider.languageCode == "en" ? "Dark" : "غامق",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: provider.mode == ThemeMode.light
                              ? Colors.black
                              : MyThemeData.primaryColor)),
                  Spacer(),
                  provider.mode == ThemeMode.light
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
