import 'package:bookly_app/features/presentation/views/widgets/BestSellerItems.dart';
import 'package:bookly_app/features/presentation/views/widgets/customAppBar.dart';
import 'package:bookly_app/features/presentation/views/widgets/customListViwe.dart';
import 'package:flutter/material.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // <<<<< هنا نضع Scaffold
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
                const customListViwe(),
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
          SliverFillRemaining(
            child: BestSellerItems(), // هنا نضع BestSellerItems بشكل صحيح
          ),
        ],
      ),
    );
  }
}
