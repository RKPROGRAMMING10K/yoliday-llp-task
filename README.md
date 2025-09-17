# Portfolio Flutter App

A Flutter app that replicates a Figma design for a portfolio page with project cards, search functionality, and bottom navigation.

## Features

- ✅ **Portfolio Page** with tabbed navigation (Project, Saved, Shared, Achievement)
- ✅ **Responsive Design** using flutter_screenutil
- ✅ **Search Functionality** to filter projects by title/subtitle
- ✅ **Project Cards** with image, title, subtitle, author, and grade
- ✅ **Bottom Navigation** with Home, Portfolio, Input, Profile tabs
- ✅ **Custom Colors and Typography** matching design specifications
- ✅ **JSON Data Loading** from assets for project information

## Setup Instructions

### 1. Install Dependencies
```bash
flutter pub get
```

### 2. Add Fonts
Download the Inter font family from Google Fonts and replace the placeholder files in:
- `assets/fonts/Inter-Regular.ttf`
- `assets/fonts/Inter-Medium.ttf`
- `assets/fonts/Inter-SemiBold.ttf`
- `assets/fonts/Inter-Bold.ttf`

### 3. Add Images
Replace the placeholder files in `assets/images/` with actual project images:
- `project1.png` through `project6.png`

### 4. Add Icons (Optional)
Add SVG icons in `assets/icons/` if you want to use custom icons instead of Material Icons.

### 5. Run the App
```bash
flutter run
```

## Project Structure

```
lib/
├── constants/
│   └── app_styles.dart          # Colors and text styles
├── models/
│   └── project.dart             # Project data model
├── pages/
│   ├── main_page.dart           # Main app with bottom navigation
│   ├── portfolio_page.dart      # Portfolio screen with tabs and search
│   ├── home_page.dart          # Home screen placeholder
│   ├── input_page.dart         # Input screen placeholder
│   └── profile_page.dart       # Profile screen placeholder
├── widgets/
│   └── project_card.dart        # Reusable project card widget
└── main.dart                    # App entry point

assets/
├── data/
│   └── projects.json           # Project data
├── fonts/
│   └── Inter-*.ttf            # Font files
├── images/
│   └── project*.png           # Project images
└── icons/
    └── *.svg                  # Custom icons (optional)
```

## Key Features Implementation

### Colors
- Primary Orange: `#FF5C00`
- Primary Text: `#1F2937`
- Secondary Text: `#6B7280`
- Background: `#FAFAFA`
- Card Background: `#FFFFFF`

### Typography
- Font Family: Inter
- Responsive sizing using flutter_screenutil
- Weight variations: Regular (400), Medium (500), SemiBold (600), Bold (700)

### Portfolio Page Features
1. **Top Bar**: Title "Portfolio" with bag and notification icons
2. **Tabs**: Project (default), Saved, Shared, Achievement
3. **Search Bar**: Filters projects by title/subtitle
4. **Project Grid**: 2-column responsive grid of project cards
5. **Filter Button**: Sticky button above bottom navigation

### Bottom Navigation
- 4 tabs: Home, Portfolio, Input, Profile
- Orange accent color for selected tab
- Indicator bar above selected tab icon
- Portfolio tab is selected by default

## Customization

### Adding New Projects
Edit `assets/data/projects.json`:
```json
{
  "title": "Project Title",
  "subtitle": "CATEGORY NAME",
  "author": "Oleh Author Name", 
  "grade": "A",
  "image": "assets/images/new_project.png"
}
```

### Changing Colors
Update colors in `lib/constants/app_styles.dart`:
```dart
class AppColors {
  static const Color accent = Color(0xFFYOUR_COLOR);
  // ... other colors
}
```

### Modifying Layout
- **Card Aspect Ratio**: Change `childAspectRatio` in `portfolio_page.dart`
- **Grid Columns**: Modify `crossAxisCount` in `GridView.builder`
- **Spacing**: Adjust `crossAxisSpacing` and `mainAxisSpacing`

## Notes

- The app uses placeholder containers for images until actual assets are added
- Font files are placeholders - download actual Inter fonts from Google Fonts
- All other tabs (Home, Input, Profile) show placeholder content
- The Filter button is for appearance only (no functionality implemented)
- Search is case-insensitive and searches both title and subtitle

## Dependencies

- `flutter_screenutil: ^5.9.0` - Responsive design
- `flutter_svg: ^2.0.7` - SVG icon support (for future use)
- `cupertino_icons: ^1.0.8` - iOS-style icons

## Development

To add new features:
1. Follow the existing file structure
2. Use `AppColors` and `AppTextStyles` for consistency
3. Implement responsive design with `ScreenUtil`
4. Keep widgets modular and reusable
