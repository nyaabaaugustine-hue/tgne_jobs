# JobBox - Laravel Job Board Platform

## Overview
JobBox is a job board platform built with Laravel 12 and the Botble CMS. It allows employers to post jobs and candidates to apply for positions.

## Project Structure
- `app/` - Laravel application code
- `platform/` - Botble CMS core, packages, plugins, and themes
  - `platform/core/` - Core CMS functionality
  - `platform/packages/` - CMS packages (menus, themes, widgets, etc.)
  - `platform/plugins/` - Plugins (job-board, blog, payment, etc.)
  - `platform/themes/jobbox/` - The JobBox theme
- `public/` - Public web root
- `resources/` - Views, JS, CSS assets
- `routes/` - Laravel routes
- `database/` - Migrations, seeders, SQLite database
- `config/` - Configuration files
- `storage/` - Application storage (logs, cache, sessions)

## Tech Stack
- **Framework**: Laravel 12
- **CMS**: Botble CMS Platform
- **Database**: SQLite (database/database.sqlite)
- **PHP Version**: 8.2

## Key Configuration
- The app runs on port 5000
- SQLite database is used for development
- Admin panel is accessible at `/admin`
- Trusted proxies are configured to allow all hosts

## Development
- Run the server: `php artisan serve --host=0.0.0.0 --port=5000`
- Clear cache: `php artisan cache:clear`
- Clear views: `php artisan view:clear`
- Publish assets: `php artisan cms:publish:assets`

## Fixes Applied
1. Fixed type compatibility issue in `TableAbstract::$view` property
2. Fixed method signature compatibility in `Blueprint::morphs()` and `Blueprint::nullableMorphs()`
3. Fixed Blade template syntax error in `header.blade.php` (changed `@endempty` to `@endif`)
4. Fixed JSON-LD template escaping in header.blade.php (escaped `@context` and `@type`)
