import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamyapp/MyThemeData.dart';
import 'package:islamyapp/hadethModel.dart';
import 'package:islamyapp/hadeth_details.dart';
class AhadethTab extends StatelessWidget {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    loadHadeth();
    return Column(
      children: [
        Image.asset('assets/images/ahadeth_image.png'),
        Divider(
          thickness: 2,
          color: MyThemeData.primaryColor,
        ),
        Text(AppLocalizations.of(context)!.ahadeth),
        Divider(
          thickness: 2,
          color: MyThemeData.primaryColor,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 1,
              color: MyThemeData.primaryColor,
              indent: 50,
              endIndent: 50,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, HadethDetails.routeName,
                          arguments: allAhadeth[index]);
                    },
                    child: Text(
                      allAhadeth[index].title,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              );
            },
            itemCount: allAhadeth.length,
          ),
        )
      ],
    );
  }

  void loadHadeth() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((ahadeth) {
      List<String> ahadethList = ahadeth.split("#");
      for (int i = 0; i < ahadethList.length; i++) {
        String hadeth = ahadethList[i];
        List<String> hadethOneLines = hadeth.trim().split('\n');
        String title = hadethOneLines[0];
        hadethOneLines.removeAt(0);
        List<String> content = hadethOneLines;
        HadethModel hadethModel = HadethModel(title, content);
        print(i);
        print(hadethModel.title);
        allAhadeth.add(hadethModel);
      }
    }).catchError((e) {
      print(e.toString());
    });
  }
}
