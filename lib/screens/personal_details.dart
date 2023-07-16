import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({super.key});

  @override
  State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
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
                  'Edit Personal Details',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Name',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    hintText: 'Nancy',
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Mobile Number',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                TextField(
                  controller: _mobController,
                  decoration: InputDecoration(
                      hintText: '+91**********',
                      suffix: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Edit',
                            style: TextStyle(fontSize: 16),
                          ))),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Email Address',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    hintText: 'laundry123@gmail.com',
                  ),
                ),
                SizedBox(
                  height: MediaQuery.maybeOf(context)!.size.height * 0.15,
                ),
                CustomButton(
                  onPressed: () {},
                  title: 'Save',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
