import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_recipe_app/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: CircleAvatar(
          backgroundImage: const AssetImage('assets/profile.png'),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
        ),
        title: const Text('Good Morning', style: TextStyle(color: Colors.grey)),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_rounded),
              color: Colors.black)
        ],
      ),
        body: Container(
      color: Colors.white,
      
    )

    );
  }
}
