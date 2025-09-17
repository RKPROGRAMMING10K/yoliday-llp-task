import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/app_styles.dart';
import '../models/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.r,
      shadowColor: Colors.black.withOpacity(0.1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      child: Container(
        height: 120.h,
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          children: [
            // Project Image
            ClipRRect(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(12.r),
              ),
              child: Container(
                width: 100.w,
                height: double.infinity,
                color: AppColors.searchBackground,
                child: project.image.contains('assets/images/')
                    ? Image.asset(
                        project.image,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  AppColors.accent.withOpacity(0.1),
                                  AppColors.accent.withOpacity(0.3),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.image,
                                size: 32.sp,
                                color: AppColors.accent,
                              ),
                            ),
                          );
                        },
                      )
                    : Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              AppColors.accent.withOpacity(0.1),
                              AppColors.accent.withOpacity(0.3),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.image,
                            size: 32.sp,
                            color: AppColors.accent,
                          ),
                        ),
                      ),
              ),
            ),

            // Card Content
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Title
                          Text(
                            project.title,
                            style: AppTextStyles.cardTitle.copyWith(
                              fontSize: 13.sp,
                              height: 1.1,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),

                          SizedBox(height: 10.h),

                          // Subtitle
                          Text(
                            project.subtitle,
                            style: AppTextStyles.cardSubtitle.copyWith(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),

                          SizedBox(height: 4.h),

                          // Author
                          Text(
                            project.author,
                            style: AppTextStyles.cardAuthor.copyWith(
                              fontSize: 9.sp,
                              height: 1.0,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),

                    // Grade Badge
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 50.w,
                        height: 26.h,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFFF39519), Color(0xFFFFCD67)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: Center(
                          child: Text(
                            project.grade,
                            style: AppTextStyles.gradeBadge.copyWith(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
