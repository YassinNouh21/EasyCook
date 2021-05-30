import 'dart:ffi';

import 'package:easy_cook/pages/loginpage/SignUp.dart';

class RecipeCardBundle {
  String titleOfRecipe;
  String rating;
  String place;
  String thumbnailUrl;
  String ingredient;
  String howToCookIt;
  String time;
  String youtubeURL;
  RecipeCardBundle({
    this.ingredient,
    this.youtubeURL,
    this.howToCookIt,
    this.titleOfRecipe,
    this.place,
    this.rating,
    this.thumbnailUrl,
    this.time,
  });
}

class module extends RecipeCardBundle {
  List<RecipeCardBundle> module1 = [
    RecipeCardBundle(
        youtubeURL: "https://www.youtube.com/watch?v=INZcWGPEAfw",
        titleOfRecipe: "Molkia",
        thumbnailUrl:
            "https://d1uz88p17r663j.cloudfront.net/resized/2f8dd5571dd3b67dd5dc60fa3edf2315_molokheya_1500x700_944_531.jpg",
        rating: "3",
        place: "Egypt",
        //ingredient: ["1/2 tomato", "1/2 kilo potato", "1/2 lover chase"],
        time: "20 min",
        howToCookIt:
            "Allow the sauce to cool completely. Place into a freezer-safe container. Freeze for up to three months. Thaw in the refrigerator overnight. Heat thoroughly before serving. Adjust consistency as needed."),
    RecipeCardBundle(
        titleOfRecipe: "Koshari",
        youtubeURL: "https://www.youtube.com/watch?v=6YmjSZLjnoA",
        rating: "4",
        place: "Egypt",
        time: "30 min",
        // ingredient: [
        //   "1 large onion",
        //   "sliced into thin rings,Salt",
        //   "⅓ cup all-purpose flour",
        //   "½ cup cooking oil"
        // ],
        howToCookIt:
            "Minnie’s Taste of Mediterranean Delight is a project to help disadvantaged people in Egypt to be able to put food on the table for their families. This cookbook, made from the heart and filled with more than 150 authentic recipes, hopes to support the impoverished with all proceeds going to charity. With recipes handed down over various generations to more modern ones, the pages on this book will not only transport you to the Mediterranean but will also support those in the most desperate locations in Egypt.",
        thumbnailUrl:
            "http://egyptianstreets.com/wp-content/uploads/2017/08/koshari2.jpg"),
    RecipeCardBundle(
        howToCookIt:
            "aLayer salmon, cream cheese, and avocado on the rice, and roll it up tightly. Slice with a sharp knife, and enjoy with soy sauce. Place the seaweed on a bamboo mat, then cover the sheet of seaweed with an even layer of prepared sushi rice. Smooth gently with the rice paddle.",
        thumbnailUrl:
            "https://howdaily.com/wp-content/uploads/2016/11/lion-king-sushi-ingredients.jpg",
        place: "Chinese",
        rating: "4",
        time: "50 min",
        // ingredient: [
        //   "6 sheets sushi seaweed aka nori",
        //   "1 batch prepared sushi rice",
        //   "1/2 lb sushi-grade raw salmon or desired" "raw fish of choice",
        //   "4 oz cream cheese sliced into strips",
        //   "1 avocado sliced",
        //   "soy sauce for serving"
        // ],
        titleOfRecipe: "Sushi",
        youtubeURL: "https://www.youtube.com/watch?v=OS8NMl-1IUc"),
    RecipeCardBundle(
        youtubeURL: "https://www.youtube.com/watch?v=01WepaN730A",
        // ingredient: [
        //   "6 x corn on the cob",
        //   "200 g diced chicken pieces",
        //   "2 x sliced red peppers",
        //   "1 Packet wooden skewers"
        // ],
        place: "Arab",
        time: "40 min",
        howToCookIt:
            "Season your diced chicken pieces with the barbecue spice and fry until they are cooked through.Slice your red peppers so that they are bite-sized but still able to fit on the skewer.Roll your corn lightly in spices before cutting into three to four parts.Assemble your three ingredients onto the skewers, starting with the corn, then the chicken and lastly the pepper before repeating the pattern.",
        titleOfRecipe: "https://www.youtube.com/watch?v=9CwX-lmFuqU",
        rating: "4",
        thumbnailUrl:
            "https://foodal.com/wp-content/uploads/2020/08/Summer-Grilling-Just-Got-Tastier-with-Citrus-Marinated-Beef-Kebabs-Recipe.jpg"),
    RecipeCardBundle(
        // ingredient: [
        //   "10 Carrots",
        //   "1 Medium Cabbage",
        //   "2 Medium Cucumbers",
        //   "1 Bulb Lettuce",
        //   "300g Baked Beans",
        //   "4 Hard Boiled Eggs",
        //   "400g Sweet Corn",
        //   "2 Medium Onion",
        //   "1 Heinz Salad Cream"
        // ],
        titleOfRecipe: "https://www.youtube.com/watch?v=as0FqZJuawk",
        time: "10 min",
        rating: "5",
        place: "USA",
        youtubeURL: "",
        thumbnailUrl:
            "https://d47gxy3fatgwk.cloudfront.net/wp-content/uploads/2018/12/tomato-red-onion-watercress-feta-and-olive-salad-069.jpg",
        howToCookIt:
            "Peel and grate the carrots. Slice the cabbage into thin shreds. Peel and slice cucumber, lettuce and onions into small bits. Cut the hard boiled eggs thinly. Wash and place them all in separate bowls. In a separate bowl, layer the salad ingredients starting with the cabbage, then carrots, cucumbers, lettuce, onions, sweet corn and baked beans. Reserve the eggs for the top of the salad. You can have 2 layers of each, depending  n how big your bowl is. Layer until your ingredients are exhausted. Place in the fridge to cool, then serve with Heinz Salad Cream, because no Nigerian salad is complete without it!")
  ];
}
