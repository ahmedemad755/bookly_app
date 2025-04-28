import 'package:bookly_app/constans.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: KeyprimaryColor,
      title: const Text("bookly_book"), // لاحظ صححت اسم الكتابة هنا
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search, size: 34)),
      ],
    );
  }
}
