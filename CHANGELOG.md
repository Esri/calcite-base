# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

### Removed
- [**BREAKING**] removed spacing mixins

### Added
- added new spacing scale variables
- added new focus style mixins

### Fixed
- updated a few shadow variables that seemed to have inconsistent names / values
- use the Sass migrator to automatically update your stylesheets to use math.div() and list.slash()

## 1.2.0

### Changed

- updated shadow values

### Added

- border-radius variable

## 1.1.0

### Added
- allow setting `line-height` in `font-size` mixin

## 1.0.0

### Added

- Mixins:
  - animation
  - responsive
  - spacing
  - type
  - utils
  - shadow
- Variables in several file formats:
  - Sass
  - ES6 Modules
  - JSON
  - TypeScript definitions
  - CSS (Custom Properties)
