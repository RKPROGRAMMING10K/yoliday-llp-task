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

### 3. Run the App
```bash
flutter run
```


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

