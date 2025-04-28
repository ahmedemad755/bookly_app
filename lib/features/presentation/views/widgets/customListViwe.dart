import 'package:flutter/material.dart';

// ignore: camel_case_types
class customListViwe extends StatelessWidget {
  const customListViwe({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      "assets/test.jpg",
      "assets/slider1.PNG",
      "assets/test.jpg",
      "assets/slider3.PNG",
      "assets/test.jpg",
    ];

    return Column(
      children: [
        const SizedBox(height: 24),
        SizedBox(
          height: 200, // نخليها هنا عشان نتحكم بارتفاع الـ ListView نفسه
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 8),
                child: AspectRatio(
                  aspectRatio:
                      3 / 4, // 👈 تحكم بنسبة العرض للطول  عرض الي طول (w/h)
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(items[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
