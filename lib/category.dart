import 'package:flutter/material.dart';

import 'books1.dart';
import 'my_library.dart';

class CateGory extends StatelessWidget {
  const CateGory({super.key});

  @override
  Widget build(BuildContext context) {
    var categories = [
      {'categoryName': 'كتب دينية'},
      {'categoryName': 'كتب تعليمية'},
      {'categoryName': 'كتب طبخ'},
      {'categoryName': 'كتب ثقافية'},
    ];
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
              const Center(
                child: Text(
                  'تصنيف الكتاب',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: Color.fromRGBO(150, 140, 228, 1.0),
                  ),
                ),
              ),
              const SizedBox(height: 60.0),
              GridView.count(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 0.0,
                children: List.generate(
                  categories.length,
                  (index) => Container(
                    decoration: BoxDecoration(
                      border: index == 0
                          ? const Border(
                              bottom:
                                  BorderSide(width: 4.0, color: Colors.white),
                              left: BorderSide(width: 4.0, color: Colors.white),
                            )
                          : index == 1
                              ? const Border(
                                  bottom: BorderSide(
                                      width: 4.0, color: Colors.white),
                                )
                              : index == 2
                                  ? const Border(
                                      bottom: BorderSide(
                                          width: 4.0, color: Colors.white),
                                      left: BorderSide(
                                          width: 4.0, color: Colors.white),
                                    )
                                  : const Border(
                                      bottom: BorderSide(
                                          width: 4.0, color: Colors.white),
                                    ),
                    ),
                    child: Center(
                      child: Text(
                        "${categories[index]['categoryName']}",
                        style: const TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const Center(
                child: Text(
                  "روايات",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
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
                      builder: ((context) => const Books1()),
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
                      builder: ((context) => const MyLibrary()),
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
