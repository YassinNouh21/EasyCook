import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:easy_cook/components/my_bottom_nav_bar.dart';
import 'package:easy_cook/pages/home/components/RecipeCard.dart';
import 'package:easy_cook/pages/home/components/body.dart';
import 'package:easy_cook/size_config.dart';

class HomeScreen extends StatelessWidget {
  static String screen = "HomeScreen";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: body(),
      // We are not able to BottomNavigationBar because the icon parameter dont except SVG
      // We also use Provied to manage the state of our Nav
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      // On Android by default its false
      centerTitle: true,
      title: Image.asset(
        'assets/images/logo.png',
        height: size * 9,
        width: size * 9,
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        SizedBox(
          // It means 5 because by out defaultSize = 10
          width: SizeConfig.defaultSize * 0.5,
        )
      ],
    );
  }
}
