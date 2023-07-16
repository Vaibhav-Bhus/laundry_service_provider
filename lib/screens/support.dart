import 'package:flutter/material.dart';
import 'package:laundry_service_provider/constants/images.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 35,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(supportImage, height: 50),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      'Support',
                      style: TextStyle(fontSize: 32, color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                const Text.rich(TextSpan(
                    text:
                        'Ghasili support center is available to assist you everyday between ',
                    style: TextStyle(fontSize: 18, color: Color(0xff797777)),
                    children: <InlineSpan>[
                      TextSpan(
                        text: '10:00 am - 10:00pm...',
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff5597FF)),
                      )
                    ])),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'For any feedback, suggestions or complaints please reach out us on: ',
                  style: TextStyle(fontSize: 18, color: Color(0xff797777)),
                ),
                const SizedBox(
                  height: 35,
                ),
                const Text(
                  'support@ghasili.com',
                  style: TextStyle(fontSize: 18, color: Color(0xff5597FF)),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(emailImage),
                        const Text(
                          'Email',
                          style:
                              TextStyle(fontSize: 18, color: Color(0xff797777)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    Column(
                      children: [
                        Image.asset(chatImage),
                        const Text(
                          'Chat',
                          style:
                              TextStyle(fontSize: 18, color: Color(0xff797777)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    Column(
                      children: [
                        Image.asset(callImage),
                        const Text(
                          'Call',
                          style:
                              TextStyle(fontSize: 18, color: Color(0xff797777)),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
