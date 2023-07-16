import 'package:flutter/material.dart';
import 'package:laundry_service_provider/constants/images.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({super.key});

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
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
                  'Analytics',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  width: 132,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: const Color(0xff797777),
                    ),
                  ),
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Image.asset(scheduleImage),
                      const Text(
                        'Last 7 Days',
                        style: TextStyle(
                          color: Color(0xff797777),
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF5597FF)),
                  child: Center(
                    child: ListTile(
                      visualDensity: const VisualDensity(vertical: -4),
                      leading: Image.asset(revenueImage),
                      title: const Text(
                        'Revenue',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      subtitle: const Row(
                        children: [
                          Text(
                            '\$ 40,000',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_upward_rounded,
                            size: 10,
                            color: Color(0xff52FF43),
                          ),
                          Text(
                            '1.34%',
                            style: TextStyle(
                                color: Color(0xff52FF43), fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF5597FF)),
                  child: Center(
                    child: ListTile(
                      visualDensity: const VisualDensity(vertical: -4),
                      leading: Image.asset(cartImage),
                      title: const Text(
                        'No. of orders  ',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      subtitle: const Row(
                        children: [
                          Text(
                            '\$ 120',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_upward_rounded,
                            size: 10,
                            color: Color(0xff52FF43),
                          ),
                          Text(
                            '56%',
                            style: TextStyle(
                                color: Color(0xff52FF43), fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF5597FF)),
                  child: Center(
                    child: ListTile(
                      visualDensity: const VisualDensity(vertical: -4),
                      leading: Image.asset(cartImage),
                      title: const Text(
                        'Average Orders',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      subtitle: const Row(
                        children: [
                          Text(
                            '\$ 70',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_upward_rounded,
                            size: 10,
                            color: Color(0xff52FF43),
                          ),
                          Text(
                            '56',
                            style: TextStyle(
                                color: Color(0xff52FF43), fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  'Analytics',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Image.asset(jennyImage),
                  title: const Text(
                    'Jenny Wilson',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Image.asset(
                        rateSellerImage,
                        scale: 1.9,
                      ),
                      Text(
                        '| 2 weeks ago',
                        style:
                            TextStyle(color: Color(0xff797777), fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Text(
                  'I had a fantastic experience with this service and am incredibly pleased with the results. The provider was highly responsive throughout the process.',
                  style: TextStyle(color: Color(0xff797777), fontSize: 15),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
