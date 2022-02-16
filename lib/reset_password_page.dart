import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResetPasswordPage  extends StatefulWidget {
  const ResetPasswordPage ({Key? key}) : super(key: key);
  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/cook_image3.png'),
                  fit: BoxFit.cover 
                  )
                ),
               )),
          const Positioned(
              top: 120,
              right: 50,
              left: 50,
              bottom: 50,
              child: Text(
                'Reset Password',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              )),
          const Positioned(
              top: 200,
              right: 50,
              left: 50,
              bottom: 50,
              child: Text(
                "Enter your Email to send a link for reset your Password",
                style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 20),
              )),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(top: 300, right: 35, left: 35),
              child: Column(
                children: [
                  TextField(
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        hintText: 'Email',
                        suffixIcon: const Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      primary: Colors.green[300],
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    child: const Text("Send Link",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
