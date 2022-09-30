import 'package:auth_screen/signin_screen.dart';

import 'constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth Screen 1',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: const TextTheme(
              // displaySmall: TextStyle(
            //   color: Colors.white,
            //   fontWeight: FontWeight.bold,
            // ),
            // button: TextStyle(
            //   color: kPrimaryColor,
            // ),
            // headlineSmall: TextStyle(
            //   color: Colors.white,
            //   fontWeight: FontWeight.normal,
            // ),
            ),
            inputDecorationTheme: InputDecorationTheme(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white.withOpacity(.2),
                )
              )
            )
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/bg.jpg"),
                fit: BoxFit.cover,
              )),
            ),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "BAKING LESSONS\n",
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                    ),
                    TextSpan(
                        text: "MASTER THE ART OF BAKING",
                        style: Theme.of(context).textTheme.headlineSmall)
                  ],
                ),
              ),
              FittedBox(
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const SignInScreen();
                    }));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: kPrimaryColor,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "START LEARNING",
                          style: Theme.of(context).textTheme.button?.copyWith(
                                color: Colors.black,
                              ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
