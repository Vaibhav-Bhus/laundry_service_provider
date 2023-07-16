import 'package:flutter/material.dart';
import 'package:laundry_service_provider/screens/menu.dart';

import '../constants/images.dart';

class OrdrerHistoryScreen extends StatefulWidget {
  const OrdrerHistoryScreen({super.key});

  @override
  State<OrdrerHistoryScreen> createState() => _OrdrerHistoryScreenState();
}

class _OrdrerHistoryScreenState extends State<OrdrerHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
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
              SizedBox(
                height: MediaQuery.maybeOf(context)!.size.height * 0.035,
              ),
              const Text(
                '    Orders',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: MediaQuery.maybeOf(context)!.size.height * 0.035,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: const Color(0xff797777)),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Text('Active (0)',
                        style: TextStyle(
                          color: Color(0xff797777),
                        )),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    width: 60,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: const Color(0XFF8FD7C7),
                        // border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                      child: Text(
                        'Past',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.maybeOf(context)!.size.height * 0.15,
              ),
              Center(child: Image.asset(emptyOrderImage)),
              const SizedBox(
                height: 5,
              ),
              const Center(
                child: Text(
                  'Your orders history is empty.',
                  style: TextStyle(color: Color(0xFF797777), fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
