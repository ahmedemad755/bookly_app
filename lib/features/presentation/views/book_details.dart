import 'package:bookly_app/features/presentation/views/widgets/bookmodel.dart';
import 'package:bookly_app/features/presentation/views/widgets/homeview_body.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/features/presentation/views/widgets/customListViwe.dart';

// ignore: must_be_immutable
class BookDetailsPage extends StatelessWidget {
  final BookModel book;

  BookDetailsPage({super.key, required this.book});

  // هنا حط ليست كتب إضافية لو حابب
  final List<BookModel> relatedBooks = List.generate(
    10, // نكرر الكتاب 10 مرات
    (index) => BookModel(
      image:
          index % 2 == 0
              ? "assets/test.jpg"
              : "assets/slider3.PNG", // نستخدم الصور بالتبادل
      title: "Related Book ${index + 1}",
      author: "Author ${index + 1}",
      rating: "4.5",
      description: "Description of Related Book ${index + 1}",
    ),
  );

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
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    book.image,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                book.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Author: ${book.author}',
                style: const TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(height: 8),
              Text(
                'Rating: ${book.rating}',
                style: const TextStyle(fontSize: 18, color: Colors.orange),
              ),
              const SizedBox(height: 16),
              Text(
                book.description,
                style: const TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeviewBody(),
                    ), // تأكد من استيراد HomeViewBody
                  );
                },
                child: const Text('Back to List'),
              ),
              const SizedBox(height: 20),
              // هنا نعرض كتب إضافية لو حابب
              customListViwe(items: relatedBooks),
            ],
          ),
        ),
      ),
    );
  }
}
