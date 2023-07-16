import 'package:flutter/material.dart';
import 'package:laundry_service_provider/screens/create_promo_code.dart';

import '../constants/images.dart';

class DiscountsScreen extends StatefulWidget {
  const DiscountsScreen({super.key});

  @override
  State<DiscountsScreen> createState() => _DiscountsScreenState();
}

class _DiscountsScreenState extends State<DiscountsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                      color: const Color(0XFF8FD7C7),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: ListTile(
                      title: const Text(
                        'Good morning!',
                        style:
                            TextStyle(color: Color(0XFF797777), fontSize: 17),
                      ),
                      subtitle: const Text(
                        'Nancy',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w500),
                      ),
                      leading: CircleAvatar(
                        radius: 35,
                        child: Image.asset(userLogoImage),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                            size: 40,
                          )),
                    ),
                  ),
                ),
                SizedBox(
                    height: MediaQuery.maybeOf(context)!.size.height * 0.015),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Offers/Discounts',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: MediaQuery.maybeOf(context)!.size.width * 0.20,
                    ),
                    TextButton(
                      autofocus: false,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const CreatePromoCodeScreen()));
                      },
                      child: const Text(
                        'Create',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 130,
                  width: MediaQuery.maybeOf(context)!.size.width * 0.85,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [
                            Color(0xFFFF9966),
                            Color(0xFFFF9966),
                            Color(0xD9FF9966),
                          ],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft),
                      borderRadius: BorderRadius.circular(40)),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 25.0, left: 25),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '50%',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Limited offer!',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Get 50% discount for every order',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                    height: MediaQuery.maybeOf(context)!.size.height * 0.055),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
