import 'package:flutter/material.dart';

import 'register.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 247, 184, 210),
        child: Column(
          children: [
            const Spacer(),
            Expanded(child: Image.asset('images/11.png')),
            const SizedBox(height: 30.0),
            const Text(
              'صفحة',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 60.0),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: ((context) => const Register()),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.only(top: 5.0),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 2.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Color.fromRGBO(150, 140, 228, 1.0),
                ),
                child: const Text(
                  'ابدأ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(top: 5.0),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 2.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Color.fromRGBO(150, 140, 228, 1.0),
                ),
                child: const Text(
                  'الدعم',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
