import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamyapp/MyThemeData.dart';
import 'package:islamyapp/suraModel.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'suraDetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/background.png',
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title:
              Text(args.suraName, style: Theme.of(context).textTheme.bodyLarge),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
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
                    verses[index],
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ));
                },
                itemCount: verses.length,
              ),
            ),
          ),
        ),
      ),
    );
  }

  loadFile(int index) async {
    String file = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = file.split("\n");
    verses = lines;
    setState(() {});
  }
}
