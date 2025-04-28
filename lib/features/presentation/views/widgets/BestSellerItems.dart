import 'package:bookly_app/features/presentation/views/book_details.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BestSellerItems extends StatefulWidget {
  BestSellerItems({super.key});

  @override
  State<BestSellerItems> createState() => _BestSellerItemsState();
}

class _BestSellerItemsState extends State<BestSellerItems> {
  final List<Map<String, String>> bestSellerBooks = [
    {
      "image": "assets/slider1.PNG",
      "title": "Book Title 1",
      "subtitle": "Best Book Ever",
      "author": "Author 1",
      "rating": "",
    },
    {
      "image": "assets/slider1.PNG",
      "title": "Book Title 2",
      "subtitle": "Another Great Book",
      "author": "Author 2",
      "rating": "4.0",
    },
    {
      "image": "assets/slider1.PNG",
      "title": "Book Title 3",
      "subtitle": "Must Read!",
      "author": "Author 3",
      "rating": "4.0",
    },
    {
      "image": "assets/slider1.PNG",
      "title": "Book Title 4",
      "subtitle": "Must Read!",
      "author": "Author 4",
      "rating": "4.0",
    },
    {
      "image": "assets/slider1.PNG",
      "title": "Book Title 4",
      "subtitle": "Must Read!",
      "author": "Author 4",
      "rating": "4.0",
    },
    {
      "image": "assets/slider1.PNG",
      "title": "Book Title 4",
      "subtitle": "Must Read!",
      "author": "Author 4",
      "rating": "4.0",
    },
    {
      "image": "assets/slider1.PNG",
      "title": "Book Title 4",
      "subtitle": "Must Read!",
      "author": "Author 4",
      "rating": "4.0",
    },
    {
      "image": "assets/slider1.PNG",
      "title": "Book Title 4",
      "subtitle": "Must Read!",
      "author": "Author 4",
      "rating": "4.0",
    },
    {
      "image": "assets/slider1.PNG",
      "title": "Book Title 4",
      "subtitle": "Must Read!",
      "author": "Author 4",
      "rating": "4.0",
    },
    {
      "image": "assets/slider1.PNG",
      "title": "Book Title 4",
      "subtitle": "Must Read!",
      "author": "Author 4",
      "rating": "4.0",
    },
    {
      "image": "assets/slider1.PNG",
      "title": "Book Title 4",
      "subtitle": "Must Read!",
      "author": "Author 4",
      "rating": "4.0",
    },
  ];

  @override
  Widget build(BuildContext context) {
    bool isStarred = true;
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
                  builder:
                      (context) => BookDetailsPage(
                        imageUrl:
                            book["image"] ??
                            "assets/default_image.png", // استخدام صورة افتراضية لو مش موجودة
                        title: book["title"] ?? "No Title.......",
                        author: book["author"] ?? "Unknown Author",
                        rating: book["rating"] ?? "0.0",
                        description:
                            book["description"] ??
                            "No Description available", // وصف الكتاب
                      ),
                ),
              );
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100, // 💬 لازم نحدد ارتفاع
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: AspectRatio(
                      aspectRatio: 1, // 👈 تحافظ على تناسب العرض والطول
                      child: Image.asset(
                        book["image"] ?? "لا يوجد صوره ",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        book["title"] ?? "No Title.......",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      const SizedBox(height: 6),
                      Text(
                        book["author"] ?? "Unknown Author",
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
                            book["author"]!,
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
                                  setState(() {
                                    isStarred =
                                        !isStarred; // تغيير الحالة عند الضغط
                                  });
                                },
                                icon: Icon(
                                  Icons.star,
                                  color: isStarred ? Colors.amber : Colors.grey,
                                ),
                              ),
                              Text(book["rating"] ?? "0.0"),
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
