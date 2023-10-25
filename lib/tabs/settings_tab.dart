import 'package:flutter/material.dart';
import 'package:islamyapp/MyThemeData.dart';
import 'package:islamyapp/Providers/myProvider.dart';
import 'package:provider/provider.dart';

import '../BottomSheets/LanguagesBottomSheet.dart';
import '../BottomSheets/MoodBottomSheet.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(provider.languageCode == "en" ? "Language" : "اللغة"),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 18),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: MyThemeData.primaryColor)),
              child: Text(provider.language),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(provider.languageCode == "en" ? "Mood" : "مود"),
          InkWell(
            onTap: () {
              showThemingBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 18),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: MyThemeData.primaryColor)),
              child: Text(provider.mode == ThemeMode.light
                  ? provider.languageCode == "en"
                      ? "Light"
                      : "فاتح"
                  : provider.languageCode == "en"
                      ? "Dark"
                      : "غامق"),
            ),
          ),
        ],
      ),
    );
  }

  showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        shape: OutlineInputBorder(
            borderSide: BorderSide(color: MyThemeData.primaryColor),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12))),
        builder: (context) => LanguageBottomSheet());
  }

  showThemingBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: OutlineInputBorder(
          borderSide: BorderSide(color: MyThemeData.primaryColor),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      builder: (context) => MoodBottomSheet(),
    );
  }
}
