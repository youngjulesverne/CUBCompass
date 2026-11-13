# CUBCompass

A student guide website for Constructor University Bremen: one place for new and returning students to find campus life, student services and Bremen city information, with user accounts and a feedback form.

Team project for the **Databases and Web Services** course at Constructor University (Fall 2024), built by a team of three that I led.

## Features

- **Campus life:** clubs, events, sports, laundry and food services
- **Student services:** registrar, housing, health insurance, residence permit, welcome money, bank services
- **Bremen city guide:** restaurants and bars, transportation, medical services, nightlife, entertainment
- **User accounts:** sign-up, login, sessions and password reset, with passwords hashed using PHP's `password_hash`
- **Feedback form** for students to suggest improvements
- **Corporate design:** a consistent visual identity, documented in `Corporate Design CUBCompass.pdf`

## Tech stack

HTML, CSS, JavaScript, PHP (PDO, prepared statements), MySQL

## Database

The relational schema in [`sql/schemaProducts.sql`](sql/schemaProducts.sql) models the site's content and users:

| Table | Purpose |
|---|---|
| `Community` | Student communities (e.g. freshers, whole university) |
| `Users`, `Admin`, `Freshies` | Accounts and roles |
| `Content` | Guide pages, grouped by community |
| `Questions`, `Answers` | FAQ entries linked to content |
| `generalInfo`, `Announcement`, `Categories` | General information, announcements and categories |
| `feedback` | Feedback submitted through the site |

Foreign keys with `ON DELETE CASCADE` keep related records consistent. Sample data is in [`sql/Insertion.sql`](sql/Insertion.sql) and example queries in [`sql/queries.sql`](sql/queries.sql).

## Project structure

```
website project/          main site: pages, styles, scripts
website project/backend/  PHP: database connection, sign-up, login, sessions, password reset
sql/                      schema, sample data, queries
imprint/                  imprint page
assets/                   logo and images
```

## Run it locally

1. Create a MySQL database and run `sql/schemaProducts.sql`, then `sql/Insertion.sql`.
2. Add your database credentials in `website project/backend/db.php`.
3. Serve the `website project` folder with a PHP-enabled server, for example:
   ```bash
   cd "website project"
   php -S localhost:8000
   ```
4. Open http://localhost:8000.

## My role

- Led the three-person team: split up tasks, coordinated deadlines and integrated everyone's work
- Designed the relational database schema and wrote the SQL queries
- Built the PHP backend for sign-up, login, sessions and password reset
- Contributed frontend pages in HTML, CSS and JavaScript

## Disclaimer

Student lab work. Not affiliated with or endorsed by Constructor University.
