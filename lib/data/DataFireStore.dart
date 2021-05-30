import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'RecipeCardBundle.dart';

class DataFireStore {
  final CollectionReference data =
      Firestore.instance.collection('RecipeModule');
  Future<void> add(RecipeCardBundle r1) {
    return data
        .add({
          'title': r1.titleOfRecipe,
          'rate': r1.rating,
          'how': r1.howToCookIt,
          'place': r1.place,
          'time': r1.time,
          'ingredients': r1.ingredient,
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  Future<List<RecipeCardBundle>> showData() async {
    module m1 = module();
    // i have to add in module1 recipebundle
    List<RecipeCardBundle> bundle = [];
    var snapshot = await data.getDocuments();
    for (var doc in snapshot.documents) {
      var data = doc.data;
      bundle.add(RecipeCardBundle(
          time: data['time'],
          place: data['place'],
          rating: data['rate'],
          titleOfRecipe: data['title'],
          howToCookIt: data['how'],
          youtubeURL: data['urlyoutube'],
          ingredient: data['ingredients'],
          thumbnailUrl: data['url']));
      print("firebase " + data['rate']);
    }
    return bundle;
  }
}
