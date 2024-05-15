import 'package:flutter/material.dart';

import 'books2.dart';
import 'category.dart';

class Books1 extends StatelessWidget {
  const Books1({super.key});

  @override
  Widget build(BuildContext context) {
    void myDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Icon(
              Icons.check_circle,
              size: 50.0,
              color: Colors.green.withOpacity(0.7),
            ),
            content: const Text(
              'تم تحميل الكتاب بنجاح',
              style: TextStyle(fontSize: 20.0),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'رجوع',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ],
          );
        },
      );
    }

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
              const Center(
                child: Text(
                  'كتب صوتية',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      myDialog();
                    },
                    icon: const Icon(
                      Icons.download,
                      size: 30.0,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(child: Image.asset("images/1.webp")),
                ],
              ),
              const SizedBox(height: 60.0),
              const Center(
                child: Text(
                  'كتب للقراءة',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      myDialog();
                    },
                    icon: const Icon(
                      Icons.download,
                      size: 30.0,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(child: Image.asset("images/2.webp")),
                ],
              ),
              const SizedBox(height: 60.0),
              Row(
                children: [
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(150, 140, 228, 1.0),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: ((context) => const Books2()),
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
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 30.0),
              Row(
                children: [
                  const Spacer(),
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
                      'العودة',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
