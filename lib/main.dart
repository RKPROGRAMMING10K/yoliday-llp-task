import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants/app_styles.dart';
import 'pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // iPhone 11 Pro design size
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Portfolio App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.orange,
            fontFamily: AppTextStyles.fontFamily,
            scaffoldBackgroundColor: AppColors.background,
            appBarTheme: AppBarTheme(
              backgroundColor: AppColors.white,
              elevation: 0,
              iconTheme: IconThemeData(color: AppColors.primary, size: 24.sp),
              titleTextStyle: AppTextStyles.heading2.copyWith(fontSize: 20.sp),
            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: AppColors.white,
              selectedItemColor: AppColors.accent,
              unselectedItemColor: AppColors.secondary,
              type: BottomNavigationBarType.fixed,
              elevation: 8,
            ),
          ),
          home: const MainPage(),
        );
      },
    );
  }
}
