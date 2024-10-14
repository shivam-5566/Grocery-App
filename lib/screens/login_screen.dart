import 'package:flutter/material.dart';
import 'package:grocery_app/screens/product_screen.dart';
import 'package:grocery_app/widgets/custom_textfield.dart';
import 'package:grocery_app/widgets/login_card.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: h,
        width: w,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/redlogin.jpg'),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 55,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProductScreen()));
                        },
                        child: const Text(
                          "SKIP",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'IosFont',
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          "assets/images/groceryIcon.png",
                          fit: BoxFit.fill,
                        )),
                    const SizedBox(
                      width: 22,
                    ),
                    const Text(
                      "Grocery App",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IosFont'),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * .3,
                ),
                const Text(
                  "Shop Smart, Save\n Big on Groceries!",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'IosFont',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 24,
                ),
                const LoginCard(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'IosFont',
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProductScreen()));
                        },
                        child: const Text(
                          "SignUp",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'IosFont',
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
