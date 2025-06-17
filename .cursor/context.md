# Project Overview

This project is a Hugo static site for documenting legacy modernization patterns.

## Key Directories
- `content/`: Markdown content for the site
- `layouts/`: Hugo templates and layouts
- `static/`: Static assets (images, CSS, JS)
- `themes/`: Hugo themes (using 'perplex')

## Build
Use `start.sh` to build the site

## Notes
- The `public/` directory is generated and should not be edited directly.
- See `README.md` for more details.

## Adding Placeholder Pattern Pages
When adding a new placeholder pattern page (e.g., in a migration section):
- Use the correct `featured` image path (e.g., `/patterns/migration/bubble/bubble.png` for bubble icon)
- Add a `menu` block for side navigation:
  ```yaml
  menu:
    doc:
      name: <Pattern Name>
      parent: migration
      pre: bubble_chart
  ```
- Set `subtitle: false` and `categories: [migration]` for consistency
- Set a suitable `weight` for ordering
- Example front matter:
  ```yaml
  ---
  title: "Reverse Bubble"
  description: "Placeholder for the Reverse Bubble pattern."
  featured: "/patterns/migration/bubble/bubble.png"
  subtitle: false
  menu:
    doc:
      name: Reverse Bubble
      parent: migration
      pre: bubble_chart
  categories: [migration]
  weight: 100
  ---
  ```
