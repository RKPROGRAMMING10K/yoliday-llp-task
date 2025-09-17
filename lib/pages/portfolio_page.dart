import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/app_styles.dart';
import '../models/project.dart';
import '../widgets/project_card.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Project> _projects = [];
  List<Project> _filteredProjects = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _loadProjects();
    _searchController.addListener(_filterProjects);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _loadProjects() async {
    try {
      final String response = await rootBundle.loadString(
        'assets/data/projects.json',
      );
      final List<dynamic> data = json.decode(response);
      setState(() {
        _projects = data.map((json) => Project.fromJson(json)).toList();
        _filteredProjects = _projects;
      });
    } catch (e) {
      print('Error loading projects: $e');
    }
  }

  void _filterProjects() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredProjects = _projects
          .where(
            (project) =>
                project.title.toLowerCase().contains(query) ||
                project.subtitle.toLowerCase().contains(query),
          )
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        title: Text(
          'Portfolio',
          style: AppTextStyles.heading2.copyWith(fontSize: 20.sp),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag,
              color: AppColors.accent,
              size: 24.sp,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: AppColors.accent,
              size: 24.sp,
            ),
          ),
          SizedBox(width: 8.w),
        ],
      ),
      body: Column(
        children: [
          // Tab Bar
          Container(
            color: AppColors.white,
            child: TabBar(
              controller: _tabController,
              labelColor: AppColors.accent,
              unselectedLabelColor: AppColors.secondary,
              labelStyle: AppTextStyles.tabSelected.copyWith(fontSize: 14.sp),
              unselectedLabelStyle: AppTextStyles.tabUnselected.copyWith(
                fontSize: 14.sp,
              ),
              indicatorColor: AppColors.tabIndicator,
              indicatorWeight: 2.h,
              tabs: const [
                Tab(text: 'Project'),
                Tab(text: 'Saved'),
                Tab(text: 'Shared'),
                Tab(text: 'Achievement'),
              ],
            ),
          ),

          // Tab Bar View
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildProjectTab(),
                _buildEmptyTab('Saved'),
                _buildEmptyTab('Shared'),
                _buildEmptyTab('Achievement'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectTab() {
    return Column(
      children: [
        // Search Bar
        Container(
          color: AppColors.white,
          padding: EdgeInsets.all(16.w),
          child: Container(
            height: 48.h,
            decoration: BoxDecoration(
              color: AppColors.searchBackground,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: TextField(
              controller: _searchController,
              style: AppTextStyles.body2.copyWith(fontSize: 14.sp),
              decoration: InputDecoration(
                hintText: 'Search a project',
                hintStyle: AppTextStyles.searchHint.copyWith(fontSize: 14.sp),
                suffixIcon: Container(
                  width: 28.w,
                  height: 28.h,
                  margin: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                    color: const Color(0xFFDF5532),
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: Center(
                    child: Icon(Icons.search, color: Colors.white, size: 16.sp),
                  ),
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 12.h,
                ),
              ),
            ),
          ),
        ),

        // Projects List
        Expanded(
          child: Container(
            color: AppColors.background,
            child: _filteredProjects.isEmpty
                ? Center(
                    child: Text(
                      'No projects found',
                      style: AppTextStyles.body2.copyWith(fontSize: 16.sp),
                    ),
                  )
                : ListView.separated(
                    padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 80.h),
                    itemCount: _filteredProjects.length,
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 12.h),
                    itemBuilder: (context, index) {
                      return ProjectCard(project: _filteredProjects[index]);
                    },
                  ),
          ),
        ),
      ],
    );
  }

  Widget _buildEmptyTab(String tabName) {
    return Container(
      color: AppColors.background,
      child: Center(
        child: Text(
          '$tabName content will be here',
          style: AppTextStyles.body2.copyWith(fontSize: 16.sp),
        ),
      ),
    );
  }
}
