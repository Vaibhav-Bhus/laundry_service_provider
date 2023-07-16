import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:laundry_service_provider/constants/images.dart';
import 'package:laundry_service_provider/screens/enter_code.dart';
import 'package:laundry_service_provider/widgets/custom_button.dart';

class MobileNumberScreen extends StatefulWidget {
  const MobileNumberScreen({super.key});

  @override
  State<MobileNumberScreen> createState() => _MobileNumberScreenState();
}

class _MobileNumberScreenState extends State<MobileNumberScreen> {
  final TextEditingController _mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffEDEDED),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Stack(
              children: [
                Image.asset(mobileNumberImage),
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
                                  text: 'mobile',
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.black),
                                )
                              ])),
                          Text.rich(TextSpan(
                              text: 'Number',
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
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Mobile Number',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.maybeOf(context)!.size.height * 0.008,
                  ),
                  Row(
                    children: [
                      const CountryCodePicker(
                        initialSelection: 'IN',
                        showFlagDialog: true,
                      ),
                      Flexible(
                        child: TextField(
                          controller: _mobileNumberController,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Mobile Number'),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: MediaQuery.maybeOf(context)!.size.height * 0.11,
                  ),
                  CustomButton(
                    title: 'Send Code',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const EnterCodeScreen()));
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.maybeOf(context)!.size.height * 0.1,
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
