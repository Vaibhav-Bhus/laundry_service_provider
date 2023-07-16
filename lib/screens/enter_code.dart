import 'package:flutter/material.dart';
import 'package:laundry_service_provider/constants/images.dart';
import 'package:laundry_service_provider/screens/sign_up.dart';
import 'package:laundry_service_provider/widgets/custom_button.dart';

class EnterCodeScreen extends StatefulWidget {
  const EnterCodeScreen({super.key});

  @override
  State<EnterCodeScreen> createState() => _EnterCodeScreenState();
}

class _EnterCodeScreenState extends State<EnterCodeScreen> {
  final TextEditingController _otpController = TextEditingController();
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
                              text: 'Enter ',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 22,
                              ),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: 'otp',
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.black),
                                )
                              ])),
                          Text.rich(TextSpan(
                              text: 'Code',
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
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Enter the 4-digit code sent to you at',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '+91**********',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.maybeOf(context)!.size.height * 0.008,
                  ),
                  TextField(
                    controller: _otpController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Code',
                    ),
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: MediaQuery.maybeOf(context)!.size.height * 0.01,
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: Text.rich(TextSpan(
                        text: 'Didn\'t receive a code? ',
                        style: TextStyle(fontSize: 17),
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'Resend code',
                            style: TextStyle(fontSize: 17, color: Colors.blue),
                          )
                        ])),
                  ),
                  SizedBox(
                    height: MediaQuery.maybeOf(context)!.size.height * 0.080,
                  ),
                  CustomButton(
                    title: 'Continue',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.maybeOf(context)!.size.height * 0.080,
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
                  )
                ],
              ),
            ),
          ],
        )));
  }
}
