import 'package:bookly_app/features/presentation/views/widgets/bookmodel.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/features/presentation/views/book_details.dart';

class BestSellerItems extends StatelessWidget {
  final List<BookModel> bestSellerBooks = [
    BookModel(
      image: "assets/slider1.PNG",
      title: "Book Title 1",
      author: "Author 1",
      rating: "4.5",
      description: "Best Book Ever",
    ),
    BookModel(
      image: "assets/slider1.PNG",
      title: "Book Title 2",
      author: "Author 2",
      rating: "4.0",
      description: "Another Great Book",
    ),
    BookModel(
      image: "assets/slider1.PNG",
      title: "Book Title 3",
      author: "Author 3",
      rating: "4.0",
      description: "Must Read!",
    ),
    // أضف باقي الكتب هنا
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: bestSellerBooks.length,
      padding: const EdgeInsets.all(8.0),
      itemBuilder: (context, index) {
        final book = bestSellerBooks[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: GestureDetector(
            onTap: () {
              // الانتقال إلى صفحة BookDetailsPage عند الضغط
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailsPage(book: book),
                ),
              );
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100, // ارتفاع الصورة
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: AspectRatio(
                      aspectRatio: 1, // التناسب بين العرض والطول
                      child: Image.asset(book.image, fit: BoxFit.cover),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        book.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      const SizedBox(height: 6),
                      Text(
                        book.author,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      const SizedBox(height: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            book.author,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  // أضف تغيير حالة "مفضل" إذا كنت بحاجة إليها
                                },
                                icon: const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                              ),
                              Text(book.rating),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
