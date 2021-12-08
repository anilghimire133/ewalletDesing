import 'package:design_day_two/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F8FE),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: const Color(0xFF3D4785),
                    borderRadius: BorderRadius.circular(100)),
                child: const Icon(
                  MaterialCommunityIcons.piggy_bank,
                  color: Color(0xFFFFFFFF),
                  size: 70,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        SizedBox(
                          width: 13,
                        ),
                        Text('Email Address'),
                      ],
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: 'usertest@gmail.com',
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        SizedBox(
                          width: 13,
                        ),
                        Text('Password'),
                      ],
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: '*************',
                          prefixIcon: Icon(
                            Icons.lock,
                          ),
                          suffixIcon: Icon(Icons.remove_red_eye_sharp)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/homepage');
              },
              child: Container(
                width: 340,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF3E4685),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Center(
                    child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Signup',
                  ),
                  Text(
                    'Forget Password?',
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
