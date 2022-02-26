import 'package:flutter/material.dart';
import 'package:flutter_one/pages/home_page.dart';
import 'package:flutter_one/pages/intro.dart';
import 'package:flutter_one/pages/map_page.dart';
import 'package:flutter_one/pages/people_fav.dart';
import 'package:flutter_one/pages/ranking_page.dart';
import 'package:flutter_one/pages/profile_page.dart';
import '../styles.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ThemeColor.xPurple,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.home, color: Colors.white,),
            title: const Text('Home', style: ThemeText.whiteText,),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Intro()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.people_alt_outlined, color: Colors.white,),
            title: const Text('Heroes', style: ThemeText.whiteText,),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.emoji_events, color: Colors.white,),
            title: const Text('Ranking', style: ThemeText.whiteText,),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RankingPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.map, color: Colors.white,),
            title: const Text('Map', style: ThemeText.whiteText,),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MapPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite_border, color: Colors.white,),
            title: const Text('Favorites', style: ThemeText.whiteText,),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PeopleFavPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle_outlined, color: Colors.white,),
            title: const Text('Profile', style: ThemeText.whiteText,),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}