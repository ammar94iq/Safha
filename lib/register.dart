import 'package:flutter/material.dart';

import 'login.dart';
import 'splash.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(50.0),
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
                  'انشاء حساب',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 60.0),
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(right: 25.0),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'اسم المستخدم',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(right: 25.0),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'البريد الالكتروني',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(right: 25.0),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'كلمة المرور',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
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
                      builder: ((context) => const Login()),
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
                      builder: ((context) => const Splash()),
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
