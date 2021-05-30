import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:easy_cook/constants.dart';
import 'package:easy_cook/data/RecipeCardBundle.dart';
import 'package:easy_cook/pages/home/home_screen.dart';
import 'package:easy_cook/size_config.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class RecipeDetailsScreen extends StatelessWidget {
  static String screen = "RecipeDetailsScreen";
  final double size = SizeConfig.defaultSize;
  // static RecipeCardBundle r1 = RecipeCardBundle();
  // final url = r1.youtubeURL;
  // YoutubePlayerController _controller = YoutubePlayerController(
  //     initialVideoId: YoutubePlayer.convertUrlToId(url));
  @override
  Widget build(BuildContext context) {
    RecipeCardBundle r1 = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              buildSliverAppBar(r1, context),
              SliverList(
                  delegate: SliverChildListDelegate([
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size * 1.5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size * 1.8),
                        child: Text(
                          r1.titleOfRecipe,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              fontFamily: 'Pacifico'),
                        ),
                      ),
                      SizedBox(
                        height: size * 3,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: size * 1,
                          ),
                          Icon(
                            Icons.play_arrow,
                            size: size * 2.5,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: " Play", style: TextStyle(fontSize: 15)),
                            TextSpan(
                                text: "\nVideo",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                          ])),
                          Container(
                            height: size * 4,
                            width: 1.5,
                            margin: EdgeInsets.symmetric(horizontal: size * 4),
                            color: Colors.black,
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "Food", style: TextStyle(fontSize: 15)),
                            TextSpan(text: "\n"),
                            TextSpan(
                                text: r1.place,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                          ])),
                          Container(
                            height: size * 4,
                            width: 1.5,
                            margin: EdgeInsets.symmetric(horizontal: size * 4),
                            color: Colors.black,
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "Time Cooking",
                                style: TextStyle(fontSize: 15)),
                            TextSpan(text: "\n"),
                            TextSpan(
                                text: r1.time,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                          ]))
                        ],
                      ),
                      SizedBox(
                        height: size * 3,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size * 1),
                        child: Text(
                          "Ingredients: ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: size * 1.2),
                      Column(
                        children: List.generate(r1.ingredient.length, (index) {
                          return Padding(
                            padding: EdgeInsets.only(left: size * 1),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  r1.ingredient[index].toString(),
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Caveat', fontSize: 27),
                                )),
                          );
                        }),
                      ),
                      SizedBox(
                        height: size * 2,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size * 1),
                        child: Text(
                          "How To Cook It ? ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: size * 1,
                      ),
                      Expanded(
                          child: Padding(
                        padding:
                            EdgeInsets.only(left: size * 1, right: size * 1),
                        child: Text(
                          r1.howToCookIt,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontFamily: 'Caveat'),
                        ),
                      )),
                      // YoutubePlayer(controller: _controller),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0)),
                      color: Colors.green),
                  height: 1000,
                )
              ]))
            ],
          ),
        ));
  }

  SliverAppBar buildSliverAppBar(RecipeCardBundle r1, BuildContext context) {
    return SliverAppBar(
      leading: Padding(
        padding: EdgeInsets.all(size * 0.8),
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, HomeScreen.screen);
          },
          color: kPrimaryColor,
          textColor: Colors.white,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Icon(
              Icons.arrow_back_ios,
              size: size * 1.2,
            ),
          ),
          shape: CircleBorder(),
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      pinned: true,
      expandedHeight: MediaQuery.of(context).size.height * 0.4,
      flexibleSpace: FlexibleSpaceBar(
          background: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.transparent,
        child: FittedBox(
          child: Image.network(r1.thumbnailUrl),
          fit: BoxFit.fill,
        ),
      )),
    );
  }
}
