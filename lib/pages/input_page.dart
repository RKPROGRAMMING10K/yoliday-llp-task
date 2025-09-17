import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/app_styles.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        title: Text(
          'Input',
          style: AppTextStyles.heading2.copyWith(fontSize: 20.sp),
        ),
      ),
      body: Center(
        child: Text(
          'Input Page Content',
          style: AppTextStyles.body1.copyWith(fontSize: 16.sp),
        ),
      ),
    );
  }
}
