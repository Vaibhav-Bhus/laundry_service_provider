import 'package:flutter/material.dart';
import 'package:laundry_service_provider/constants/images.dart';
import 'package:laundry_service_provider/screens/analytics.dart';
import 'package:laundry_service_provider/screens/cards.dart';
import 'package:laundry_service_provider/screens/mobile_number.dart';
import 'package:laundry_service_provider/screens/personal_details.dart';
import 'package:laundry_service_provider/screens/support.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
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
                const Text(
                  'Menu',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(
                  height: 35,
                ),
                const Text(
                  'Account Settings',
                  style: TextStyle(fontSize: 20, color: Color(0xFF797777)),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PersonalDetailsScreen())),
                  title: const Text(
                    'Personal Details',
                    style: TextStyle(fontSize: 20, color: Color(0xFF797777)),
                  ),
                  leading: Image.asset(personalDetailsImage),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CardsScreen())),
                  title: const Text(
                    'Payment Cards',
                    style: TextStyle(fontSize: 20, color: Color(0xFF797777)),
                  ),
                  leading: Image.asset(paymentCardsImage),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AnalyticsScreen())),
                  title: const Text(
                    'Analytics',
                    style: TextStyle(fontSize: 20, color: Color(0xFF797777)),
                  ),
                  leading: Image.asset(analyticsImage),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Help Center',
                  style: TextStyle(fontSize: 20, color: Color(0xFF797777)),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SupportScreen())),
                  title: const Text(
                    'Support',
                    style: TextStyle(fontSize: 20, color: Color(0xFF797777)),
                  ),
                  leading: Image.asset(supportImage),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  title: const Text(
                    'Terms of Service',
                    style: TextStyle(fontSize: 20, color: Color(0xFF797777)),
                  ),
                  leading: Image.asset(termsOfServiceImage),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MobileNumberScreen()));
                    },
                    child: const Text(
                      'Log out',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF5597FF),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.maybeOf(context)!.size.height * 0.025,
                ),
                const Center(
                  child: Text(
                    'Version: 1.0.0 Build: 1654678675',
                    style: TextStyle(fontSize: 13, color: Color(0xFF797777)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
