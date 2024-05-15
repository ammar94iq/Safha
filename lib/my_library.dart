import 'package:flutter/material.dart';

import 'category.dart';
import 'login.dart';

class MyLibrary extends StatelessWidget {
  const MyLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20.0),
          width: double.infinity,
          height: double.infinity,
          color: const Color.fromARGB(255, 247, 184, 210),
          child: ListView(
            children: [
              const SizedBox(height: 30.0),
              Image.asset('images/11.png', height: 100),
              const SizedBox(height: 30.0),
              const Center(
                child: Text(
                  'صفحة',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 60.0),
              const Center(
                child: Text(
                  textAlign: TextAlign.center,
                  'تطبيق صفحة يساعد محبين القراءة على اكتشاف الكتب وتحميلها',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 60.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(150, 140, 228, 1.0),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: ((context) => const CateGory()),
                    ),
                  );
                },
                child: const Text(
                  'التالي',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(150, 140, 228, 1.0),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: ((context) => const Login()),
                    ),
                  );
                },
                child: const Text(
                  'العودة',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
