<div align="center">

# 📸 Flutter Gallery App
### Advanced Slivers, Custom Scroll Physics & Multi-Grid Viewport Architecture

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Architecture](https://img.shields.io/badge/Layout-Slivers_%26_CustomScrollView-4F46E5?style=for-the-badge)](https://flutter.dev)
[![UI/UX](https://img.shields.io/badge/Design-Material_3-10B981?style=for-the-badge)](https://m3.material.io)

<p align="center">
  A high-performance photo catalog engineered to master complex sliver mechanics, lazy-loading viewports, and multi-tab state preservation in Flutter.
</p>

</div>

---

## 📱 App in Action

<div align="center">

<!-- GitHub Native Playable Video -->
https://github.com/user-attachments/assets/b22b86ab-24d9-48b2-b6d5-f23ed8c9658d

<p align="center">
  <a href="https://github.com/user-attachments/assets/b22b86ab-24d9-48b2-b6d5-f23ed8c9658d" target="_blank">
    <img src="https://img.shields.io/badge/▶️_Open_Full_Video-Gallery_Demo-4F46E5?style=for-the-badge&logo=quicktime&logoColor=white" alt="Open Video" />
  </a>
</p>

</div>

---

## 📌 Architectural Overview

Standard Flutter scroll views often struggle when grouping heterogeneous layouts (collapsing headers, sticky date dividers, and multi-column grids) without causing viewport boundary conflicts.

This project was built to explore **low-level sliver composition**, coordinating custom scroll physics, dynamic flexible space headers, and memory-efficient lazy loading within a single, cohesive `CustomScrollView`.

---

## 🏛️ Engineering & Layout Highlights

### 1. 🎛️ Reusable Collapsing App Bar (`GalleryAppBar`)
* Engineered a centralized `SliverAppBar` component shared across multiple views, eliminating duplicate layout definitions.
* Integrates a `QuickActionRow` filter strip directly into the flexible space buffer, maintaining fluid transitions during vertical scrolls.

### 2. 🧩 Complex Nested Grids in a Unified Viewport
* Solved viewport clipping by pairing `SliverToBoxAdapter` month headers with dedicated `SliverGrid` clusters inside one continuous `CustomScrollView`.
* Eliminates inner scroll contention, ensuring a unified 60 FPS gesture trajectory across the screen.

### 3. ⚡ Lazy-Loaded Viewport Allocation
* All image lists and grids leverage builder delegates (`SliverChildBuilderDelegate`, `SliverList.builder`).
* Memory allocation is strictly bounded to on-screen viewports, preventing out-of-memory spikes when cataloging dense photo libraries.

### 4. 🗂️ Zero-Reload Tab State Preservation (`IndexedStack`)
* Drives 4 primary navigation destinations (*Pictures*, *Albums*, *Stories*, *Shared*) through an `IndexedStack` inside Material 3's `NavigationBar`.
* Tab switching preserves scroll offsets and loaded asset states with zero visual jumping.

### 5. 📦 Centralized Data Architecture
* Decoupled image file paths, album classifications, and metadata into a centralized in-memory data source, keeping hardcoded asset data out of the UI presentation layer.

---

## 📱 Screen Breakdown

| Screen | Layout Engine | Purpose & Mechanics |
| :--- | :--- | :--- |
| **Pictures** | `CustomScrollView` + `SliverGrid` | 3-column media grid categorized chronologically under sticky month headers with collapsing flexible headers. |
| **Albums** | `SliverGrid` with fixed aspect ratios | 2-column album directory engineered with rigid ratio clamping to prevent folder metadata clipping. |
| **Stories** | Full-width `SliverList.builder` | Magazine-style editorial layout featuring full-width media cards. |
| **Shared** | Navigation placeholder | Target destination for peer-to-peer cloud album sharing streams. |

---

## 🚀 Getting Started

### Prerequisites
* Flutter SDK (3.x or higher)
* Dart SDK (3.x or higher)

### Installation
```bash
# 1. Clone the repository
git clone https://github.com/laibanurr/gallery_app.git

# 2. Navigate to project root
cd gallery_app

# 3. Install dependencies
flutter pub get

# 4. Run the application
flutter run
```

---

<div align="center">
  <sub>Engineered by <b>Laiba Nur</b> • Specialized in Flutter, Riverpod & Mobile Architecture</sub>
</div>
