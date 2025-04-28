import 'package:bookly_app/features/presentation/views/widgets/customListViwe.dart';
import 'package:flutter/material.dart';

class BookDetailsPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String author;
  final String rating;
  final String description;

  // هنا نمرر القيم عند الانتقال للصفحة
  const BookDetailsPage({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.author,
    required this.rating,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Book Details')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // صورة الكتاب
              Center(
                // child: Container(
                //   height: 250, // تحديد الارتفاع
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(25),
                //     // تحديد الزوايا الدائرية للحدود
                //     // border: Border.all(
                //     //   color: Colors.black, // اللون الخاص بالحدود
                //     //   width: 2, // سمك الحدود
                //     // ),
                //   ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    20,
                  ), // الحفاظ على الزوايا الدائرية داخل الصورة
                  child: Image.asset(imageUrl, height: 250, fit: BoxFit.cover),
                ),
                // ),
              ),
              const SizedBox(height: 16),
              // عنوان الكتاب
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              // اسم المؤلف
              Text(
                'Author: $author',
                style: const TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(height: 8),
              // التقييم
              Text(
                'Rating: $rating',
                style: const TextStyle(fontSize: 18, color: Colors.orange),
              ),
              const SizedBox(height: 16),
              // وصف الكتاب
              Text(
                description,
                style: const TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 16),
              // زر للرجوع أو أي حاجة إضافية
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // للرجوع للصفحة السابقة
                },
                child: const Text('Back to List'),
              ),
              customListViwe(),
            ],
          ),
        ),
      ),
    );
  }
}
