import 'package:flutter/material.dart';

import 'custom_textfield.dart';

class LoginCard extends StatefulWidget {
  const LoginCard({super.key});

  @override
  State<LoginCard> createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    // GlobalKey to identify the form
    final _formKey = GlobalKey<FormState>();
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(18.0)),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 1,
                  width: w * .15,
                  color: Colors.grey,
                ),
                const Spacer(),
                const Text(
                  "Login to your account",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontFamily: 'IosFont'),
                ),
                const Spacer(),
                Container(
                  height: 1,
                  width: w * .15,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 18.0,
            ),
            CustomTextField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter an email';
                }
                // Regular expression for email validation
                String pattern = r'\w+@\w+\.\w+';
                RegExp regex = RegExp(pattern);
                if (!regex.hasMatch(value)) {
                  return 'Enter a valid email address';
                }
                return null;
              },
              hintText: 'Email',
              icon: Icons.mail,
              controller: emailController,
              obscure: false,
            ),
            const SizedBox(
              height: 18.0,
            ),
            CustomTextField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters long';
                }
                return null;
              },
              hintText: 'Password',
              icon: Icons.lock,
              controller: passwordController,
              obscure: true,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: w,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(6)),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () {
                    {
                      // Validate form inputs
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    }
                  },
                  child: const Text(
                    "Login",
                    style:
                        TextStyle(color: Colors.white, fontFamily: 'IosFont'),
                  )),
            ),
            const SizedBox(
              height: 2,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",
                  style:
                      TextStyle(color: Colors.black87, fontFamily: 'IosFont'),
                ))
          ],
        ),
      ),
    );
  }
}
