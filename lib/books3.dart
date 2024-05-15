import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'books2.dart';

class Books3 extends StatelessWidget {
  const Books3({super.key});

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
            physics: const BouncingScrollPhysics(),
            children: [
              const Center(
                child: Text(
                  'الفئة العمرية',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  '16',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  'واكبر',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 60.0),
              const Content(
                  firstImage: 'images/8.png', secondImage: 'images/7.png'),
              const SizedBox(height: 30.0),
              const Content(
                  firstImage: 'images/9.png', secondImage: 'images/10.png'),
              const SizedBox(height: 30.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(150, 140, 228, 1.0),
                ),
                onPressed: () {},
                child: const Text(
                  'التالي',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
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
                  'العودة',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  final String firstImage;
  final String secondImage;
  const Content(
      {super.key, required this.firstImage, required this.secondImage});

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

    final Uri _url = Uri.parse(
        'https://monkeypen.com/blogs/news/ginger-the-giraffe-free-children-book');

    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }

    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              InkWell(onTap: _launchUrl, child: Image.asset(firstImage)),
              const Text(
                textAlign: TextAlign.center,
                "اسم المؤلف : كامل الكيلاني",
                style: TextStyle(fontSize: 20.0),
              ),
              IconButton(
                onPressed: () {
                  myDialog();
                },
                icon: const Icon(
                  Icons.download,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 20.0),
        Expanded(
          child: Column(
            children: [
              InkWell(onTap: _launchUrl, child: Image.asset(secondImage)),
              const Text(
                textAlign: TextAlign.center,
                "اسم المؤلف : كامل الكيلاني",
                style: TextStyle(fontSize: 20.0),
              ),
              IconButton(
                onPressed: () {
                  myDialog();
                },
                icon: const Icon(
                  Icons.download,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
