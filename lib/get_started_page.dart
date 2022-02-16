import 'package:flutter/material.dart';
import 'package:food_recipe_app/login_page.dart';

class FoodRecipeApp extends StatelessWidget {
  const FoodRecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStartedPage(),
    );
  }
}

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({Key? key}) : super(key: key);
  @override
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
              bottom: 400,
              child: Container(
                  margin: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/cook_image1.png', scale: 4.5),
                    ],
                  ))),
          Positioned(
              top: 600,
              child: Container(
                  margin: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/cook_image2.png', scale: 2.5),
                    ],
                  ))),
          const Positioned(
              top: 400,
              right: 50,
              left: 50,
              bottom: 50,
              child: Text(
                'Cooking Experience like a Chef',
                style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              )),
          const Positioned(
              top: 550,
              right: 50,
              left: 50,
              bottom: 50,
              child: Text(
                "Let's make a delicious dish with the best recipe for the family",
                style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 20),
              )),
          Positioned(
            top: 700,
            left: 300,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green[300],
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                textStyle: const TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginPage()),
                  );
              },
              child: const Text("Next",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}
