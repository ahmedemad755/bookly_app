import 'package:flutter/material.dart';

class SplashviweBody extends StatefulWidget {
  const SplashviweBody({super.key});

  @override
  State<SplashviweBody> createState() => _SplashviweBodyState();
}

class _SplashviweBodyState extends State<SplashviweBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animaationController;
  late Animation<Offset> slidinganimation;

  @override
  void initState() {
    super.initState();
    animaationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5), // دقيقة كتير أوي لو قصدك حركة بسيطة
    );

    slidinganimation = Tween<Offset>(
      begin: Offset(0, 2), // يبدأ من تحت
      end: Offset.zero, // يتحرك لفوق لمكانه الطبيعي
    ).animate(
      CurvedAnimation(parent: animaationController, curve: Curves.easeOut),
    );

    animaationController.forward(); // 👈 لازم تشغّل الـ animation هنا
  }

  @override
  void dispose() {
    animaationController.dispose(); // مهم جداً تنظف الـ controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // لازم يكون فيه Scaffold عشان تظهر العناصر بشكل صحيح
      // مثلاً
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Bookly App",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            AnimatedBuilder(
              animation: slidinganimation,
              builder: (context, _) {
                return SlideTransition(
                  position: slidinganimation,
                  child: Text(
                    "Read free books",
                    style: TextStyle(fontSize: 24, color: Colors.white70),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
