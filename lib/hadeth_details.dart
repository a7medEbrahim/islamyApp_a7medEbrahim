import 'package:flutter/material.dart';
import 'package:islamyapp/hadethModel.dart';
import 'package:provider/provider.dart';

import 'MyThemeData.dart';
import 'Providers/myProvider.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'HadethDetails';

  @override
  Widget build(BuildContext context) {
    List<String> verses = [];
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    var provider = Provider.of<MyProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/background.png',
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor:
            provider.mode == ThemeMode.light ? Colors.white : Color(0xFF141A2E),
        appBar: AppBar(
          title: Text(args.title, style: Theme.of(context).textTheme.bodyLarge),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: provider.mode == ThemeMode.light
                ? Colors.white
                : Color(0xFF141A2E),
            elevation: 18,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
                side: BorderSide(color: MyThemeData.primaryColor, width: 2)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  color: MyThemeData.primaryColor,
                  thickness: 1,
                      indent: 50,
                      endIndent: 50,
                    ),
                itemBuilder: (context, index) {
                  return Center(
                      child: Text(
                        "${args.content[index]}",
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                      ));
                },
                itemCount: args.content.length,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
