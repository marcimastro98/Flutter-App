// ignore_for_file: unrelated_type_equality_checks

import 'dart:async';
import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _loginPageState();
}

// ignore: camel_case_types
class _loginPageState extends State<LoginPage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  bannerError() => {
        setState(() => {
              email.text != '' && password.text != ''
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage(email: email.text)))
                  : ScaffoldMessenger.of(context)
                      .showMaterialBanner(MaterialBanner(
                      padding: const EdgeInsets.all(20),
                      content: const Text('Empty email or password'),
                      leading: const Icon(Icons.error),
                      backgroundColor: const Color(0xFFDE3E3E),
                      actions: <Widget>[
                        TextButton(
                            onPressed: () => {
                                  ScaffoldMessenger.of(context)
                                      .removeCurrentMaterialBanner()
                                },
                            child: const Text('Close'))
                      ],
                    ))
            }),
        Future.delayed(const Duration(milliseconds: 1500), () {
          setState(() {
            ScaffoldMessenger.of(context).removeCurrentMaterialBanner();
          });
        })
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Hello, welcome to  MyApp',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextField(
                      controller: email,
                      decoration: const InputDecoration(
                          border: InputBorder.none, hintText: 'Email'),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextField(
                      controller: password,
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: InputBorder.none, hintText: 'Password'),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: GestureDetector(
                  onTap: () => {bannerError()},
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                        child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(bottom: 45.0),
                child: Align(
                  child: InkWell(
                    // ignore: avoid_print
                    onTap: () => print("OK CLICK!"),
                    child: const Text('Not a member? Register now!'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
