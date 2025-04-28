import 'package:bookly_app/features/presentation/views/widgets/bookmodel.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/features/presentation/views/book_details.dart';

// ignore: camel_case_types
class customListViwe extends StatelessWidget {
  final List<BookModel> items;

  const customListViwe({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              BookModel book = items[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => BookDetailsPage(book: book),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 8),
                  child: AspectRatio(
                    aspectRatio: 3 / 4,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(book.image),
                          fit: BoxFit.cover,
                        ),
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
