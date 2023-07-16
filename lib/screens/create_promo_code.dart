import 'package:flutter/material.dart';
import 'package:laundry_service_provider/constants/images.dart';

class CreatePromoCodeScreen extends StatefulWidget {
  const CreatePromoCodeScreen({super.key});

  @override
  State<CreatePromoCodeScreen> createState() => _CreatePromoCodeScreenState();
}

class _CreatePromoCodeScreenState extends State<CreatePromoCodeScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
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
                  'Create Promo Code',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Code*',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    hintText: '10FG45',
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Discount*',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                TextField(
                  controller: _mobController,
                  decoration: const InputDecoration(
                    hintText: '20%',
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Promotional Period*',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      hintText: 'Schedule start date',
                      prefixIcon: Image.asset(scheduleImage)),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Promotional Period*',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      hintText: 'Schedule end date',
                      prefixIcon: Image.asset(scheduleImage)),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Note*',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                TextField(
                  controller: _mobController,
                  decoration: const InputDecoration(
                    hintText: 'This is new promo code',
                  ),
                ),
                SizedBox(
                  height: MediaQuery.maybeOf(context)!.size.height * 0.10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 130,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color(0XFF5597FF),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: InkWell(
                          onTap: () {},
                          child: const Text(
                            'Create',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color(0XFFFF5454),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: InkWell(
                          onTap: () {},
                          child: const Text(
                            'Cancel',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
