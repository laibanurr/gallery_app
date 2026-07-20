# Gallery App

A Flutter photo gallery app built to practice slivers, nested scroll views, and structuring a multi-screen app with proper bottom navigation — not just cramming everything into one file.

📱 **Demo:**
![Uploading gallery_small.gif…]()


## What I built

- **Bottom navigation with preserved tab state.** Four tabs (Pictures, Albums, Stories, Shared) driven by `IndexedStack` inside a `NavigationBar` (Material 3), so switching tabs doesn't reset each screen's scroll position.
- **A reusable collapsing app bar.** One `SliverAppBar`-based `GalleryAppBar` widget used across Pictures and Albums, with a `QuickActionRow` filter strip built into its flexible space — no duplicated app bar code between screens.
- **Nested grids inside a single scroll view.** The Pictures screen groups photos by month using `SliverToBoxAdapter` headers next to `SliverGrid`s, all inside one `CustomScrollView` — this took a few iterations to get the sliver nesting right without breaking the scroll viewport.
- **Lazy loading throughout.** Grids and lists use builder delegates (`SliverChildBuilderDelegate`, `SliverList.builder`) so only visible items get built.
- **Static in-app data source.** Photo paths and album/story metadata are centralized in one data file, kept out of the UI layer.

## Screens

- **Pictures** — a 3-column grid grouped under month headers, scrolling under a collapsing app bar
- **Albums** — a 2-column folder grid with a fixed aspect ratio so titles/counts don't clip
- **Stories** — a full-width vertical feed styled like a story/magazine layout
- **Shared** — in progress

## Known limitations
- Shared tab is a placeholder for now — actively working on it
- Data is static/local, not fetched from an API — this was a UI/layout-focused build

## Getting Started
Standard Flutter setup — `flutter pub get`, then `flutter run`.
