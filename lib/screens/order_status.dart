import 'package:flutter/material.dart';
import 'package:laundry_service_provider/constants/images.dart';

class OrderStatusScreen extends StatefulWidget {
  const OrderStatusScreen({super.key});

  @override
  State<OrderStatusScreen> createState() => _OrderStatusScreenState();
}

class _OrderStatusScreenState extends State<OrderStatusScreen> {
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
                  'Wash & Iron',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  child: Image.asset(maskImage),
                  // borderRadius: Border,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Item Quantity',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Those items which the driver take from customer and will give you.',
                  style: TextStyle(color: Color(0XFF797777), fontSize: 16),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset(jacketImage),
                        const Text(
                          'Jacket',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff797777),
                          ),
                        ),
                        const Text(
                          '\$ 3.00',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff5597FF),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(tShirtImage),
                        const Text(
                          'Shirt',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff797777),
                          ),
                        ),
                        const Text(
                          '\$ 2.00',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff5597FF),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(dressImage),
                        const Text(
                          'Dress',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff797777),
                          ),
                        ),
                        const Text(
                          '\$ 5.00',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff5597FF),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Notes',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Please use high-quality detergents and fabric softeners to ensure that my clothes are not only clean but also well-care. And ironed process ensure that my clothes are pressed to perfection giving them a professional finish',
                  style: TextStyle(color: Color(0XFF797777), fontSize: 16),
                ),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Address  Time Details',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                const SizedBox(
                  height: 15,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        ListTile(
                          visualDensity: VisualDensity(vertical: -4),
                          title: Text(
                            'Status',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF797777),
                            ),
                          ),
                          trailing: Text(
                            'In Progress',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF5597FF)),
                          ),
                        ),
                        ListTile(
                          visualDensity: VisualDensity(vertical: -4),
                          title: Text(
                            'Date & time',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF797777),
                            ),
                          ),
                          trailing: Text(
                            '1 May 2023, 10:45 pm',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF797777)),
                          ),
                        ),
                        ListTile(
                          visualDensity: VisualDensity(vertical: -4),
                          title: Text(
                            'Pickup',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF797777),
                            ),
                          ),
                          trailing: Text(
                            '2 May 2023, 10:00 am',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF797777)),
                          ),
                        ),
                        ListTile(
                          visualDensity: VisualDensity(vertical: -4),
                          title: Text(
                            'Address',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF797777),
                            ),
                          ),
                          trailing: Text(
                            '668 Beechwood Rd Bronx,',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF797777)),
                          ),
                        ),
                        ListTile(
                          visualDensity: VisualDensity(vertical: -4),
                          title: Text(
                            'Delivery',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF797777),
                            ),
                          ),
                          trailing: Text(
                            '3 May 2023, 07:30 pm',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF797777)),
                          ),
                        ),
                        ListTile(
                          visualDensity: VisualDensity(vertical: -4),
                          title: Text(
                            'Address',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF797777),
                            ),
                          ),
                          trailing: Text(
                            '668 Beechwood Rd Bronx,',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF797777)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                            'Accept',
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
                            'Decline',
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
