import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_farmers_fresh_zone/Vegetables.dart';
import 'package:project_farmers_fresh_zone/cart.dart';

class HomePg extends StatelessWidget {
  const HomePg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Column(
          children: [
            Row(
              children: [
                const Text(
                  'FARMERS FRESH ZONE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 100,
                ),
                const Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                  size: 14,
                ),
                const Text(
                  'Kochi',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                const Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: Colors.white,
                  size: 14,
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CartPg(),
                          ));
                    },
                    icon: const Icon(Icons.shopping_cart_outlined,
                        color: Colors.white)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search for Vegetables, fruits..',
                    hintStyle: const TextStyle(
                      color: Colors.black38,
                      fontSize: 14,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
          ],
        ),
        leading: const Text(''),
        leadingWidth: 1,
        toolbarHeight: 110,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Vegetables(),
                            ));
                      },
                      child: const Text('VEGETABLES'),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          foregroundColor: Colors.teal[800],
                          backgroundColor:
                              const Color.fromARGB(255, 242, 250, 249)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('EXOTIC VEGETABLES'),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          foregroundColor: Colors.teal[800],
                          backgroundColor:
                              const Color.fromARGB(255, 242, 250, 249)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('FRUITS'),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          foregroundColor: Colors.teal[800],
                          backgroundColor:
                              const Color.fromARGB(255, 242, 250, 249)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('EXOTIC FRUITS'),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          foregroundColor: Colors.teal[800],
                          backgroundColor:
                              const Color.fromARGB(255, 242, 250, 249)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 270,
                color: const Color.fromARGB(255, 247, 243, 232),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 200, top: 60),
                      child: Image.asset('image/Quality_Assurance.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 10),
                      child: Text(
                        "Quality \nAssurance\nIn 30!",
                        style: TextStyle(
                            color: Colors.teal[900],
                            fontSize: 30,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 160, left: 10),
                      child: Text(
                        "Report any quality issues within 30\nmins of Delivery & we'll replace it\n-No Questions Asked",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                height: 100,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 0.1,
                          color: Colors.black38,
                          offset: Offset(0.1, 0.2))
                    ]),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Image.asset('image/icons8-timer-64.png'),
                        const Text(
                          '30 MINS POLICY',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'image/icons8-hand-with-smartphone-skin-type-4-96.png',
                          height: 64,
                        ),
                        const Text(
                          'TRACEABILITY',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'image/icons8-agriculture-85.png',
                          height: 64,
                        ),
                        const Text(
                          'LOCAL SOURCING',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Image.asset('image/ShopNow.jpg'),
              const SizedBox(height: 20),
              const Text(
                'Shop By Category',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 200,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, crossAxisSpacing: 10),
                  itemCount: categories.length,
                  itemBuilder: (context, index) => ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(categories[index])),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List categories = [
  'image/tomato.png',
  'image/Pineapple.png',
  'image/Broccoli.png'
];
