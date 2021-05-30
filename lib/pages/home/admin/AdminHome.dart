import 'package:easy_cook/data/RecipeCardBundle.dart';
import 'package:easy_cook/pages/loginpage/LoginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_cook/data/DataFireStore.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatelessWidget {
  static String screen = "AdminHome";
  String _title, _rate, _place, _thumbnailUrl, _How;
  final DataFireStore f1 = DataFireStore();
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          key: globalKey,
          child: Column(
            children: [
              inputFile(
                  label: "...",
                  hint: "Link of the photo",
                  onSave: (value) {
                    _thumbnailUrl = value;
                  }),
              inputFile(
                  label: "...",
                  hint: "Enter the Recipe Name",
                  onSave: (value) {
                    _title = value;
                  }),
              inputFile(
                  label: "...",
                  hint: "Enter the rate",
                  onSave: (value) {
                    _rate = value;
                  }),
              inputFile(
                  label: "...",
                  hint: "Enter the How",
                  onSave: (value) {
                    _How = value;
                  }),
              inputFile(
                  label: "...",
                  hint: "Enter the Place Of Recipe",
                  onSave: (value) {
                    _place = value;
                  }),
              FlatButton(
                onPressed: () {
                  if (globalKey.currentState.validate()) {
                    globalKey.currentState.save();
                    f1.add(RecipeCardBundle(
                        rating: _rate,
                        howToCookIt: _How,
                        place: _place,
                        thumbnailUrl: _thumbnailUrl));
                  }
                  globalKey.currentState.reset();
                },
                color: Colors.blue,
                child: Text("add"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
