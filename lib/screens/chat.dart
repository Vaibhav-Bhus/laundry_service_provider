import 'package:flutter/material.dart';
import 'package:laundry_service_provider/constants/images.dart';
import 'package:laundry_service_provider/screens/menu.dart';
import 'package:laundry_service_provider/screens/profile.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                      color: const Color(0XFF8FD7C7),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ListTile(
                          title: const Text(
                            'Good morning!',
                            style: TextStyle(
                                color: Color(0XFF797777), fontSize: 17),
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
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const MenuScreen()));
                              },
                              icon: const Icon(
                                Icons.more_vert,
                                color: Colors.white,
                                size: 40,
                              )),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                                hintStyle: TextStyle(
                                  fontSize: 20,
                                  color: Color(0XFF797777),
                                ),
                                hintText: 'Search',
                                border: InputBorder.none,
                                icon: Icon(
                                  Icons.search,
                                  size: 35,
                                  color: Colors.white,
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Image.asset(chatImage, height: 50),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      'Chat',
                      style: TextStyle(fontSize: 32, color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Customer',
                  style: TextStyle(fontSize: 20, color: Color(0xff797777)),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProfileScreen())),
                  leading: Image.asset(jennyImage),
                  title: const Text(
                    'Jenny Wilson',
                    style: TextStyle(fontSize: 20, color: Color(0xff797777)),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Driver',
                  style: TextStyle(fontSize: 20, color: Color(0xff797777)),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProfileScreen())),
                  leading: Image.asset(ronaldImage),
                  title: const Text(
                    'Ronald Richard',
                    style: TextStyle(fontSize: 20, color: Color(0xff797777)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
