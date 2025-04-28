import 'package:bookly_app/features/presentation/views/widgets/bookmodel.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/features/presentation/views/widgets/customListViwe.dart';
import 'package:bookly_app/features/presentation/views/widgets/BestSellerItems.dart';
import 'package:bookly_app/features/presentation/views/widgets/customAppBar.dart';

class HomeviewBody extends StatelessWidget {
  HomeviewBody({super.key});

  final List<BookModel> myBooks = [
    BookModel(
      image: "assets/test.jpg",
      title: "Test Book",
      author: "Test Author",
      rating: "5.0",
      description: "This is a test description for the test book.",
    ),
    BookModel(
      image: "assets/slider1.PNG",
      title: "Another Book",
      author: "Another Author",
      rating: "4.5",
      description: "Another great book to read!",
    ),
    // تقدر تزود كتب هنا
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppBar(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customListViwe(items: myBooks),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Best Seller",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          SliverFillRemaining(child: BestSellerItems()),
        ],
      ),
    );
  }
}
