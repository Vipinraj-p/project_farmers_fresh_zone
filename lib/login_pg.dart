import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_farmers_fresh_zone/home_pg.dart';

class LoginPg extends StatelessWidget {
  const LoginPg({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController PhoneNoController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: Color.fromARGB(61, 207, 216, 220),
              child: Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 20, right: 20),
                    child: Text(
                      'FARMERS FRESH ZONE',
                      style: TextStyle(
                          color: Color.fromARGB(36, 158, 158, 158),
                          fontSize: 50,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150, left: 50),
                    child: Image.asset('image/loginpg.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 140, vertical: 30),
              child: Text(
                'Login/Sign up',
                style: TextStyle(
                    color: Color.fromARGB(183, 39, 39, 39),
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter your mobile number',
                    style: TextStyle(
                        color: Color.fromARGB(131, 39, 39, 39),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: PhoneNoController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (PhoneNoController.text == '01234') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePg(),
                            ));
                      } else {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text('Invalid phone number'),
                              );
                            });
                      }
                    },
                    child: Text('CONTINUE'),
                    style: ElevatedButton.styleFrom(
                        shape: BeveledRectangleBorder(),
                        fixedSize: Size(500, 50),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.teal[800]),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Login with password',
                          style: TextStyle(
                              color: Colors.teal[600],
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      )),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Signup'),
                    style: ElevatedButton.styleFrom(
                        shape: BeveledRectangleBorder(),
                        fixedSize: Size(500, 50),
                        foregroundColor: Colors.teal[800],
                        backgroundColor: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
