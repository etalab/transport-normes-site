# Site Structure — Normes des données de transport

## Overview

This document captures the decisions made for the new site structure of https://normes.transport.data.gouv.fr. The site displays normative documentation (NeTEx, SIRI) with multi-version support.

---

## Information Architecture

### Home Page (`/`)
- **Governance/regulatory content first** — all existing governance text stays in place
- **Norm cards below** — two cards (NeTEx, SIRI), each linking to the norm home page
- No guided paths or task-based navigation (deferred)
- No search functionality (deferred)

### Norm Home (`/netex/`, `/siri/`)
- Title + brief description from `_index.md`
- **Section cards** — grid of cards, one per section (Arrêts, Horaires, Réseaux, Tarifs, Accessibilité, Parkings, Éléments communs), each linking to that section at the current official version
- No governance text on norm homes (deferred)
- No editorial content yet (space reserved for future use)

### Section Page (`/netex/arrets/`, etc.)
- Displays content of a single section within a norm
- Version is part of the URL: `/netex/v2.4.0/arrets/`
- The default URL `/netex/arrets/` resolves to the current official version

---

## Versioning Model

### Version Discovery
- Versions are git tags on each norm's repository (NeTEx, SIRI)
- No tagging scheme currently exists; this will be addressed separately

### Version Types & Labels
Three categories of versions, distinguished by color-coded badges:

| Type | Example | Badge Style |
|------|---------|-------------|
| Current official | v2.4.0 (NeTEx), v1.8.0 (SIRI) | Green ✓ |
| Old stable | v2.3 (NeTEx) | Blue |
| Work in progress | v2.5-wip (NeTEx) | Amber ⚠ / "WIP" label |

### Version Switching Behavior
- **On section pages**: The version selector redirects to the norm home page (`/netex/`) for the selected version — no cross-version section matching logic
- **On norm homes**: Shows sections for the selected version; each section card links to that version's path
- No diff highlighting between versions (deferred due to budget)
- No "what's new" changelog pages yet (deferred)

### Edit / Contribution Links
| Version Type | Edit Link Available? | Destination |
|--------------|---------------------|-------------|
| Current official | ✅ Yes | WIP branch (e.g., v2.5-wip) |
| Work in progress | ✅ Yes | WIP branch |
| Old / sealed versions | ❌ No | — |

Contributions are only accepted on the active WIP branch. Sealed versions are read-only.

---

## Navigation

### Top Bar (All Pages)

**Left side:**
- Site logo (links to home page `/`)
- Norm pill: clickable badge showing current norm name (e.g., "NeTEx ▾") — opens dropdown with both norms for cross-norm switching

**Right side:**
- Version dropdown (on section pages and norm homes) — shows available versions with status badges
- GitHub icon
- RSS icon

On the home page, only logo + utilities are shown (no norm pill or version selector).

### Horizontal Section Index (Desktop Only, on Section Pages)

Displayed below the top bar when browsing within a norm. Lists all sections for the **current selected version**:

```
Arrêts ● Horaires  Réseaux  Tarifs  Accessibilité  Parkings  Éléments communs
```

- The active section is highlighted (e.g., with a dot or bold)
- Clicking a section navigates to that section's URL at the currently selected version
- **Updates when version changes** — the list reflects only sections available in the selected version (no cross-version matching; if a section was removed from a version, it simply doesn't appear)

### Per-Page Table of Contents

| Layout | Desktop | Mobile |
|--------|---------|--------|
| TOC type | Right-side sticky sidebar | Inline collapsible `<details>` element within content flow (same as current behavior) |
| Content | All headings from the current page, with nesting preserved | All headings from the current page, collapsed by default |

### Previous / Next Navigation

Present on every section page, at the bottom of the content. Links to adjacent sections within the same norm and same version. Always visible on both desktop and mobile.

### Mobile Section Index

On mobile (narrow screens), the horizontal section index is replaced by a **"Sections ▾" dropdown** in the top bar that opens a vertical list of all sections for the current norm. This avoids horizontal scrolling entirely.

---

## URL Structure

All URLs are static — no query parameters, no client-side routing.

| Page | URL Pattern |
|------|-------------|
| Home | `/` |
| Norm home (current version) | `/netex/`, `/siri/` |
| Section (current version) | `/netex/arrets/`, `/siri/temps-reel/` |
| Section (specific version) | `/netex/v2.4.0/arrets/`, `/netex/v2.5-wip/arrets/` |

Version switching on section pages rewrites the URL path to reflect the new version, then redirects to the norm home for that version.

---

## Deferred / Out of Scope

The following are explicitly deferred:
- Search functionality
- Diff highlighting between versions
- "What's new" changelog pages
- Guided paths or task-based navigation
- Per-norm governance text on norm home pages
- Editorial content sections
- Version tagging scheme and automated version discovery pipeline

---

## Key Pages to Wireframe

1. **Home page** (`/`) — governance first, norm cards below
2. **Norm home** (`/netex/`) — section cards grid
3. **Section page** (`/netex/arrets/`) — desktop variant with right TOC sidebar + horizontal section index; mobile variant with inline collapsible TOC + sections dropdown
