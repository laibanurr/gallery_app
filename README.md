
# Custom Mobile Gallery Hub

A photo gallery app I built to really get comfortable with slivers, scroll performance, and structuring a Flutter project the way you'd actually see it done in production — not just cramming everything into one screen file.

### What I built

Instead of dumping all my logic into single files, I tried to split things the way a real app would:

- **A separate data layer for media.** All my image paths and metadata live in their own `Media` class, completely away from the UI. The screens just pull from this — keeps them clean and easy to read.
- **A reusable custom app bar.** I built one collapsing `SliverAppBar` widget that both the Pictures and Albums screens use, just passing in different titles. It also carries a `QuickActionsRow` filter bar underneath it, so I'm not duplicating that logic anywhere.
- **Nested grids inside a single scroll view (the tricky part).** The Pictures screen groups photos by month, so I had to nest `SliverGrid`s under `SliverToBoxAdapter` month headers, all inside one scrollable — this took a few tries to get right without breaking the viewport.
- **Lazy loading everywhere.** Both the grids and lists use `.builder` constructors, so only what's actually on screen gets built. No janky scrolling from rendering stuff off-screen.

### The screens

- **Pictures** — a 3-column grid grouped under month headers (September, August, July...) that scrolls under the collapsing app bar.
- **Albums** — a 2-column layout for folders, with `childAspectRatio: 0.78` so the title and file count don't get squished or clipped.
- **Stories** — a full-width list, styled to feel more like a magazine/story feed, with gradient overlays so text stays readable over any image.
- 📱 Check out the app in action:


https://github.com/user-attachments/assets/d8946759-741a-4451-8f72-7d4ae7e540e0





---

