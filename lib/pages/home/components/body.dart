import 'package:easy_cook/data/DataFireStore.dart';
import 'package:flutter/material.dart';
import 'package:easy_cook/data/RecipeCardBundle.dart';
import 'package:easy_cook/pages/home/components/RecipeCard.dart';
import 'package:easy_cook/pages/recipe_details/RecipeDetailsScreen.dart';
import '../../../size_config.dart';
import 'categories.dart';

class body extends StatefulWidget {
  @override
  _bodyState createState() => _bodyState();
}

// ignore: camel_case_types
class _bodyState extends State<body> {
  static int index2 = 0;
  final module m1 = module();
  DataFireStore f1 = DataFireStore();
  List<RecipeCardBundle> bundle = [];
  // ignore: must_call_super
  @override
  getData() async {
    bundle = await f1.showData();
    print(bundle[0].rating + "yarb");
    for (int i = 0; i < bundle.length; i++) {
      m1.module1.add(bundle[i]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            return Column(children: <Widget>[
              Categories(),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.defaultSize * 0.1),
                child: GridView.builder(
                    itemCount: m1.module1.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          SizeConfig.orientation == Orientation.landscape
                              ? 2
                              : 1,
                      mainAxisSpacing: 1,
                      crossAxisSpacing:
                          SizeConfig.orientation == Orientation.landscape
                              ? SizeConfig.defaultSize * 2
                              : 0,
                      childAspectRatio: 1.65,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, RecipeDetailsScreen.screen,
                                arguments: m1.module1[index]);
                          },
                          child: RecipeCard(
                            r1: m1.module1[index],
                            screen: RecipeDetailsScreen.screen,
                          ),
                        ),
                      );
                    }),
              ))
            ]);
          }),
    );
  }
}
