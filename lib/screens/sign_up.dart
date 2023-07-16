import 'package:flutter/material.dart';
import 'package:laundry_service_provider/constants/images.dart';
import 'package:laundry_service_provider/screens/sign_in.dart';
import 'package:laundry_service_provider/widgets/custom_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffEDEDED),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Stack(
              children: [
                Image.asset(otpImage),
                Positioned.fill(
                  top: 50,
                  right: 25,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 85,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: const Color(0XFF8FD7C7),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Column(
                        children: [
                          Text.rich(TextSpan(
                              text: 'Create ',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 22,
                              ),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: 'Your',
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.black),
                                )
                              ])),
                          Text.rich(TextSpan(
                              text: 'Account',
                              style: TextStyle(fontSize: 22),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: '..',
                                  style: TextStyle(fontSize: 22),
                                )
                              ])),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Name',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.maybeOf(context)!.size.height * 0.05,
                  ),
                  CustomButton(
                    title: 'Register',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignInScreen()));
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.maybeOf(context)!.size.height * 0.06,
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: Text.rich(TextSpan(
                        text: 'I have an account? ',
                        style: TextStyle(fontSize: 17),
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'Log in',
                            style: TextStyle(fontSize: 17, color: Colors.blue),
                          )
                        ])),
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
