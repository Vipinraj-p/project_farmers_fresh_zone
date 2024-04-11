import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_farmers_fresh_zone/cart.dart';

class Vegetables extends StatelessWidget {
  const Vegetables({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Vegetables',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        leadingWidth: 30,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartPg(),
                    ));
              },
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.white)),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('VEGETABLES'),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      foregroundColor: Colors.teal[800],
                      side: BorderSide(color: Colors.black45),
                      backgroundColor: Color.fromARGB(255, 242, 250, 249)),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('EXOTIC VEGETABLES'),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      foregroundColor: Colors.teal[800],
                      backgroundColor: Color.fromARGB(255, 242, 250, 249)),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('FRUITS'),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      foregroundColor: Colors.teal[800],
                      backgroundColor: Color.fromARGB(255, 242, 250, 249)),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('EXOTIC FRUITS'),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      foregroundColor: Colors.teal[800],
                      backgroundColor: Color.fromARGB(255, 242, 250, 249)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
              height: 750,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    mainAxisExtent: 290,
                    crossAxisCount: 2),
                itemCount: vegs.length,
                itemBuilder: (context, index) => Card(
                  color: Colors.white,
                  surfaceTintColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          vegs[index],
                        ),
                        Text(nameVegs[index]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '₹ ${price[index]}  ',
                              style: TextStyle(
                                  //decoration: TextDecoration.lineThrough,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                            Text(
                              '₹ ${MRP[index]}',
                              style: TextStyle(
                                  color: Colors.black38,
                                  decoration: TextDecoration.lineThrough,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '0.50Kg',
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Image.asset(
                              'image/icons8-agriculture-85.png',
                              height: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 16,
                              color: Colors.black38,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('ADD'),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  fixedSize: Size(100, 20),
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.green[700]),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

List vegs = [
  'image/tomato.png',
  'image/veg/big-onion.jpg',
  'image/veg/carrot.png',
  'image/veg/potato.jpg',
  'image/veg/Beans_Haricot.png',
  'image/veg/Small_onion.png',
  'image/veg/biggreenchilliseeds.png',
  'image/veg/Cabbage.jpg',
];
List nameVegs = [
  'Tomato',
  'Big Onion',
  'Carrot',
  'Potato',
  'Beans Haricot',
  'Small onion',
  'Green Chilli',
  'Cabbage'
];
List price = [
  '8.50',
  '19.50',
  '66.50',
  '14.75',
  '38.50',
  '16.75',
  '24.20',
  '26.45',
];
List MRP = [
  '20.50',
  '24.68',
  '60.83',
  '24.50',
  '104.47',
  '26.77',
  '40.65',
  '48.64',
];
