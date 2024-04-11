import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPg extends StatefulWidget {
  const CartPg({super.key});

  @override
  State<CartPg> createState() => _CartPgState();
}

class _CartPgState extends State<CartPg> {
  TextEditingController tomatoController = TextEditingController();
  double totalPriceTomato = 8.50;
  double totalPriceBigOnion = 19.50;
  double totalPriceCarrot = 66.50;
  double totalPricePotato = 14.75;
  double totalPriceBeansHaricot = 38.50;
  double totalPriceSmallonion = 16.75;
  double grandtotal = 164.5;
  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    grandtotal = totalPriceTomato +
        totalPriceBigOnion +
        totalPriceCarrot +
        totalPricePotato +
        totalPriceBeansHaricot +
        totalPriceSmallonion;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leadingWidth: 30,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.white,
        ),
        title: const Text(
          'My Cart',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green,
        child: Row(
          children: [
            Text(
              '₹$grandtotal',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 100,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('PLACE ORDER'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  fixedSize: Size(200, 20),
                  foregroundColor: Colors.green[800],
                  backgroundColor: Colors.white),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'image/tomato.png',
                        height: 100,
                      ),
                      DropdownMenu<double>(
                          initialSelection: 0.5,
                          menuHeight: 250,
                          onSelected: (value) {
                            setState(() {
                              totalPriceTomato = value! * 17;
                            });
                          },
                          dropdownMenuEntries: [
                            DropdownMenuEntry<double>(
                                value: 0.5, label: '0.5Kg'),
                            DropdownMenuEntry<double>(value: 1, label: '1Kg'),
                            DropdownMenuEntry<double>(
                                value: 1.5, label: '1.5Kg'),
                            DropdownMenuEntry<double>(value: 2, label: '2Kg'),
                            DropdownMenuEntry<double>(value: 3, label: '3Kg'),
                            DropdownMenuEntry<double>(value: 4, label: '4Kg'),
                            DropdownMenuEntry<double>(value: 5, label: '5Kg'),
                            DropdownMenuEntry<double>(value: 10, label: '10Kg'),
                            DropdownMenuEntry<double>(value: 20, label: '20Kg')
                          ])
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tomato',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      Text(
                        '₹8.50 (0.50Kg)',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Total Price: ₹$totalPriceTomato',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Divider(),
            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'image/veg/big-onion.jpg',
                        height: 100,
                      ),
                      DropdownMenu<double>(
                          initialSelection: 0.5,
                          menuHeight: 250,
                          onSelected: (value) {
                            setState(() {
                              totalPriceBigOnion = value! * 39;
                            });
                          },
                          dropdownMenuEntries: [
                            DropdownMenuEntry<double>(
                                value: 0.5, label: '0.5Kg'),
                            DropdownMenuEntry<double>(value: 1, label: '1Kg'),
                            DropdownMenuEntry<double>(
                                value: 1.5, label: '1.5Kg'),
                            DropdownMenuEntry<double>(value: 2, label: '2Kg'),
                            DropdownMenuEntry<double>(value: 3, label: '3Kg'),
                            DropdownMenuEntry<double>(value: 4, label: '4Kg'),
                            DropdownMenuEntry<double>(value: 5, label: '5Kg'),
                            DropdownMenuEntry<double>(value: 10, label: '10Kg'),
                            DropdownMenuEntry<double>(value: 20, label: '20Kg')
                          ])
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Big Onion',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      Text(
                        '₹19.50 (0.50Kg)',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Total Price: ₹$totalPriceBigOnion',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Divider(),
            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'image/veg/carrot.png',
                        height: 100,
                      ),
                      DropdownMenu<double>(
                          initialSelection: 0.5,
                          menuHeight: 250,
                          onSelected: (value) {
                            setState(() {
                              totalPriceCarrot = value! * 133;
                            });
                          },
                          dropdownMenuEntries: [
                            DropdownMenuEntry<double>(
                                value: 0.5, label: '0.5Kg'),
                            DropdownMenuEntry<double>(value: 1, label: '1Kg'),
                            DropdownMenuEntry<double>(
                                value: 1.5, label: '1.5Kg'),
                            DropdownMenuEntry<double>(value: 2, label: '2Kg'),
                            DropdownMenuEntry<double>(value: 3, label: '3Kg'),
                            DropdownMenuEntry<double>(value: 4, label: '4Kg'),
                            DropdownMenuEntry<double>(value: 5, label: '5Kg'),
                            DropdownMenuEntry<double>(value: 10, label: '10Kg'),
                            DropdownMenuEntry<double>(value: 20, label: '20Kg')
                          ])
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Carrot',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      Text(
                        '₹66.50 (0.50Kg)',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Total Price: ₹$totalPriceCarrot',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Divider(),
            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'image/veg/potato.jpg',
                        height: 100,
                      ),
                      DropdownMenu<double>(
                          initialSelection: 0.5,
                          menuHeight: 250,
                          onSelected: (value) {
                            setState(() {
                              totalPricePotato = value! * 29.5;
                            });
                          },
                          dropdownMenuEntries: [
                            DropdownMenuEntry<double>(
                                value: 0.5, label: '0.5Kg'),
                            DropdownMenuEntry<double>(value: 1, label: '1Kg'),
                            DropdownMenuEntry<double>(
                                value: 1.5, label: '1.5Kg'),
                            DropdownMenuEntry<double>(value: 2, label: '2Kg'),
                            DropdownMenuEntry<double>(value: 3, label: '3Kg'),
                            DropdownMenuEntry<double>(value: 4, label: '4Kg'),
                            DropdownMenuEntry<double>(value: 5, label: '5Kg'),
                            DropdownMenuEntry<double>(value: 10, label: '10Kg'),
                            DropdownMenuEntry<double>(value: 20, label: '20Kg')
                          ])
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Potato',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      Text(
                        '₹14.75 (0.50Kg)',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Total Price: ₹$totalPricePotato',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Divider(),
            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'image/veg/Beans_Haricot.png',
                        height: 100,
                      ),
                      DropdownMenu<double>(
                          initialSelection: 0.5,
                          menuHeight: 250,
                          onSelected: (value) {
                            setState(() {
                              totalPriceBeansHaricot = value! * 77;
                            });
                          },
                          dropdownMenuEntries: [
                            DropdownMenuEntry<double>(
                                value: 0.5, label: '0.5Kg'),
                            DropdownMenuEntry<double>(value: 1, label: '1Kg'),
                            DropdownMenuEntry<double>(
                                value: 1.5, label: '1.5Kg'),
                            DropdownMenuEntry<double>(value: 2, label: '2Kg'),
                            DropdownMenuEntry<double>(value: 3, label: '3Kg'),
                            DropdownMenuEntry<double>(value: 4, label: '4Kg'),
                            DropdownMenuEntry<double>(value: 5, label: '5Kg'),
                            DropdownMenuEntry<double>(value: 10, label: '10Kg'),
                            DropdownMenuEntry<double>(value: 20, label: '20Kg')
                          ])
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Beans Haricot',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      Text(
                        '₹38.50 (0.50Kg)',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Total Price: ₹$totalPriceBeansHaricot',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Divider(),
            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'image/veg/Small_onion.png',
                        height: 100,
                      ),
                      DropdownMenu<double>(
                          initialSelection: 0.5,
                          menuHeight: 250,
                          onSelected: (value) {
                            setState(() {
                              totalPriceSmallonion = value! * 33.5;
                            });
                          },
                          dropdownMenuEntries: [
                            DropdownMenuEntry<double>(
                                value: 0.5, label: '0.5Kg'),
                            DropdownMenuEntry<double>(value: 1, label: '1Kg'),
                            DropdownMenuEntry<double>(
                                value: 1.5, label: '1.5Kg'),
                            DropdownMenuEntry<double>(value: 2, label: '2Kg'),
                            DropdownMenuEntry<double>(value: 3, label: '3Kg'),
                            DropdownMenuEntry<double>(value: 4, label: '4Kg'),
                            DropdownMenuEntry<double>(value: 5, label: '5Kg'),
                            DropdownMenuEntry<double>(value: 10, label: '10Kg'),
                            DropdownMenuEntry<double>(value: 20, label: '20Kg')
                          ])
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Small_onion',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      Text(
                        '₹16.75 (0.50Kg)',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Total Price: ₹$totalPriceSmallonion',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
