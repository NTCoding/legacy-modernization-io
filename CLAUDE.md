# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Hugo static site for documenting legacy modernization patterns at https://legacy-modernization.io/. The site uses the Perplex theme and focuses on providing educational content about modernizing legacy systems through various migration, data synchronization, and organizational patterns.

## Development Commands

### Primary Development
- `./start.sh` - Start development server (handles macOS file limits, kills existing processes, logs to build.log)
- `hugo server -D` - Start Hugo development server with drafts enabled
- `hugo server --disableFastRender` - Development server with full rebuilds on changes

### Building
- `hugo` - Build site for production 
- `hugo --gc --minify` - Build with garbage collection and minification (production)
- `hugo --environment production` - Build with production environment

### Configuration & Debugging
- `hugo config` - Display full site configuration
- `hugo env` - Show Hugo version and environment information
- `hugo mod graph` - Display Hugo module dependencies
- `hugo mod tidy` - Clean up module dependencies

### Content Management
- `hugo new content/patterns/{section}/{pattern}/_index.md` - Create new pattern page
- `hugo list all` - List all content files

## Architecture & Structure

### Content Organization
- **`content/patterns/`** - Main pattern documentation organized by categories:
  - `migration/` - Migration patterns (Strangler Fig, Bubble, etc.)
  - `data-synchronisation/` - Data sync patterns (CDC, Dual Write, etc.) 
  - `legacy-challenges/` - Common legacy system challenges
  - `organization/` - Organizational patterns for modernization
- **`content/authors/`** - Author profiles and biographical content
- **`content/home/`** - Homepage content
- **`layouts/`** - Hugo templates and custom layouts
- **`static/`** - Static assets (images, CSS, JS)

### Theme Architecture
Uses the Perplex Hugo theme with extensive customizations:
- **`themes/perplex/`** - Base theme with Hugo modules for enhanced functionality
- **`assets/css/custom/`** - Custom CSS overrides
- **`layouts/partials/`** - Custom partial templates
- **`layouts/patterns/`** - Pattern-specific layouts and cards

### Key Configuration Files
- **`hugo.yaml`** - Main Hugo configuration
- **`.cursor/rules/project-context.mdc`** - Detailed project context and content guidelines
- **`.github/workflows/hugo.yaml`** - GitHub Pages deployment pipeline

## Content Guidelines (from .cursor/rules)

### Pattern Page Structure
Each pattern follows this structure:
```yaml
---
title: "Pattern Name"
description: "Brief description"
featured: "/patterns/{section}/{pattern}/{image}.png"
subtitle: false
menu:
  doc:
    name: Pattern Name
    parent: section
    pre: icon_name
categories: [section]
weight: 100
---
```

### Adding Images to Patterns
When adding image references:
1. **Featured image**: Add `featured: "/patterns/{section}/{pattern}/{image}"` to front matter
2. **Body image**: Add HTML div with specific styling below content, above `{{< comingsoon >}}`

### Content Sections
- Migration patterns focus on gradual system replacement strategies
- Data synchronization patterns address data consistency during modernization
- Legacy challenges document common problems and solutions
- Organizational patterns cover team and process aspects

## Deployment

The site automatically deploys to GitHub Pages via GitHub Actions when changes are pushed to main branch. The workflow:
1. Installs Hugo CLI (v0.145.0) and Dart Sass
2. Builds with `hugo --gc --minify --baseURL ${{ steps.pages.outputs.base_url }}`
3. Uploads to GitHub Pages

## Module Dependencies

The project uses Hugo modules for:
- Theme management (Perplex theme with sub-modules)
- KaTeX for mathematical expressions
- Mermaid for diagrams
- Icon libraries
- Image processing utilities

Run `hugo mod graph` to see the full dependency tree.

## Image Design Guidelines

When creating SVG diagrams and illustrations for pattern documentation, follow these style guidelines for consistency and professional appearance:

### Typography
- **Font Family**: `Inter, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, sans-serif`
- **Headers**: 20px, font-weight 600 (semi-bold), letter-spacing 0.5px
- **Body Text/Labels**: 20px, font-weight 500 (medium)
- **Small Text**: 11px, font-style italic for subtle annotations

### Color Palette

#### Legacy System Colors
- **Background**: `#f9f9f9` (very light grey for container backgrounds)
- **Border**: `#999999` (medium grey for borders)
- **Text**: `#666666` (dark grey for text content)
- **Fill**: `#ffffff` (white for content boxes)

#### Modern/Current System Colors  
- **Background**: `#fafafe` (very light purple-tinted background)
- **Border**: `#7b2cbf` (professional purple for borders)
- **Text**: `#7b2cbf` (matching purple for text content)
- **Fill**: `#ffffff` (white for content boxes)

### Visual Elements
- **Border Width**: 3px for all container and content boxes
- **Border Radius**: 10px for main containers, 6px for content boxes
- **Arrow Style**: 
  - Color: `#4a4a4a` (neutral dark grey)
  - Width: 2px
  - Style: Dashed (`stroke-dasharray="5,3"`)
  - Arrowheads: 12x8px, positioned to almost touch (not penetrate) target borders but not quite touch (leave a small gap)

### Layout Principles
- Center content boxes within container backgrounds
- Use consistent spacing between elements
- Maintain clear visual hierarchy through consistent sizing and typography
- Ensure arrows provide clear directional flow without visual clutter
- IMPORTANT: expert use of proximity is crucial 
- IMPORTANT: text and other objects should not be crammed together - there should always be padding between the edges of object and the text or objects inside them.
- IMPORTANT: text should never overflow out of boxes. This rule can never be violated.

### Container Layout Requirements
- **Equal Padding Rule**: ALL content within containers must have equal padding on all sides
- **Proximity Principle**: Container dimensions must EXACTLY fit content plus padding - no wasted space allowed
- **Container Sizing Formula**: 
  - Width = content_width + (2 × padding)
  - Height = content_height + (2 × padding) 
- **Grid Calculation**: For 2-column layouts: `left_x = container_x + padding`, `right_x = container_x + container_width - item_width - padding`
- **Verification Steps**:
  1. Check: `container_right_edge - rightmost_item_right_edge = padding`
  2. Check: `container_bottom_edge - bottommost_item_bottom_edge = padding`
  3. Check: `leftmost_item_left_edge - container_left_edge = padding`
  4. Check: `topmost_item_top_edge - container_top_edge = padding`
- **No Exceptions**: If padding is unequal, either move content or resize container - never leave large empty spaces

### Text Positioning Requirements
- **Minimum Padding**: Text must have minimum 10px padding from all box edges
- **Box Sizing**: Increase box dimensions if needed to accommodate text with proper padding
- **Text Calculation**: Position text as: x = box_center, y = box_center (adjust for multi-line text)
- **Font Scaling**: Reduce font size if necessary to maintain padding requirements
- **Breathing Room**: Visual comfort is more important than fitting exact font sizes

## Important Notes

- The `public/` directory is auto-generated - never edit directly
- Build logs are written to `build.log` when using `./start.sh`
- The site supports draft content with `-D` flag during development
- All pattern images should be placed in the same directory as the pattern's `_index.md`
- Use the existing content structure and follow the established naming conventions for consistency