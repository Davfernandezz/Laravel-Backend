# 📚 Laravel Backend API 

Welcome to my Laravel backend project, hope you like it! 🚀  
An API for managing users, books, and categories, built with Laravel 10+, Sanctum, and MySQL.

<br>

<details>
  <summary>📑 Table of Contents</summary>
  <ol>
    <li><a href="#-description">Description</a></li>
    <li><a href="#-objective">Objective</a></li>
    <li><a href="#️-stack">Stack</a></li>
    <li><a href="#-project-details">Details</a></li>
    <li><a href="#-database-schema">Database Schema</a></li>
    <li><a href="#-local-installation">Local Installation</a></li>
    <li><a href="#-api-endpoints">API Endpoints</a></li>
    <li><a href="#-future-improvements">Future Improvements</a></li>
    <li><a href="#development">Development</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

---

## 📖 Description

Laravel backend is a project that offers:

- User authentication (register, login, logout)  
- CRUD operations for books  
- CRUD operations for categories  
- Eloquent relationships (1:N category ➝ books)  
- FormRequest validation  
- Custom error handling  
- Clear JSON API responses

---

## 🎯 Objective

Deliver a solid and scalable backend for a library system:

- **Efficiency** → Fast and secure management of books and categories  
- **Security** → Token-based authentication with Laravel Sanctum  
- **Clarity** → Clean, structured JSON responses for frontend consumption  
- **Extensibility** → Easy to add policies, gates, resources, or tests

---

## 🛠️ Stack

<div align="center">
  <img src="https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white" alt="Laravel"/>
  <img src="https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white" alt="PHP"/>
  <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL"/>
  <img src="https://img.shields.io/badge/Sanctum-000000?style=for-the-badge" alt="Sanctum"/>
</div>

---

## 📦 Project Details

This project includes several important extra details:

- **API Collection**  
  The `/collection` folder contains the Postman or Thunder Client collection, ready to import and test all available endpoints easily.

- **Database Export**  
  Inside the `/database` folder, you’ll find a `.sql` export of the database schema and example data. This helps set up a local environment quickly.

- **Environment Key (APP_KEY)**  
  If your `.env` `APP_KEY` becomes compromised, you can regenerate it safely using: `php artisan key:generate`
  This will automatically update your `.env` file.

- **Error Handling**  
A custom `Handler.php` is implemented to return clear, JSON-formatted error responses (404, 403, 422, 500)

- **Authentication Details**  
All protected routes require a Bearer token obtained during login. Add this token in the `Authorization` header for every secured request.

- **Seeders for Example Data**  
To refresh the database and load demo data, use: `php artisan migrate:fresh --seed`

- **Environment Setup Reminder**  
Don’t forget to copy `.env.example` to `.env` and configure your database credentials before running any artisan commands.

- **Basic Tests with PHPUnit**  
  Inside `/tests/Feature`, you’ll find basic tests for books and categories (creation and listing). Run them using `php artisan test` after seeding your database with `php artisan migrate:fresh --seed`.

- **Resource-Based Responses**  
API responses are formatted using `Laravel Resources (BookResource, CategoryResource)` to ensure a clean and consistent JSON structure for frontend consumption.


## 📋 Database Schema

- **Category** → hasMany → Book  
- **Book** → belongsTo → Category  
- **User** → hasMany → PersonalAccessTokens

Migrations and seeders included.

---

## 🧾 Local Installation

1️⃣ Clone the repository:
```
git clone https://github.com/Davfernandezz/Laravel-Backend.git
```

2️⃣ Install dependencies:
```
composer install
```

3️⃣ Copy environment file:
```
cp .env.example .env
```

4️⃣ Configure `.env` (DB_DATABASE, DB_USERNAME, DB_PASSWORD).

5️⃣ Generate app key:
```
php artisan key:generate
```

6️⃣ Run migrations and seeders:
```
php artisan migrate:fresh --seed
```

7️⃣ Start the server:
```
php artisan serve
```

8️⃣ (Optional) Run tests with PHPUnit:
```
php artisan test
```

---

## 🔌 API Endpoints

<details>
<summary>🔑 Authentication</summary>

- **Register User**  
Registers a new user with name, email, and password.

```
POST /api/register
```

**Body:**
```json
{
    "name": "David",
    "email": "david@david.com",
    "password": "password",
    "password_confirmation": "password"
}
```

- **Login User**  
Logs in a user and returns an authentication token.

```
POST /api/login
```

**Body:**
```json
{
    "email": "david@david.com",
    "password": "password"
}
```

- **Logout User**  
Logs out the authenticated user.

```
POST /api/logout
```

**Auth:** Bearer Token

- **Get Authenticated User**  
Returns data of the logged-in user.

```
GET /api/user
```

**Auth:** Bearer Token

</details>

<details>
<summary>📚 Books</summary>

- **List All Books**

```
GET /api/books
```

**Auth:** Bearer Token

- **Create Book**

```
POST /api/books
```

**Body:**
```json
{
    "title": "The Hobbit",
    "description": "A fantasy novel",
    "author": "J.R.R. Tolkien",
    "category_id": 1
}
```

**Auth:** Bearer Token

- **Get Book Details**

```
GET /api/books/{id}
```

**Auth:** Bearer Token

- **Update Book**

```
PUT /api/books/{id}
```

**Body:**
```json
{
    "title": "The Hobbit: An Unexpected Journey",
    "description": "Updated description",
    "author": "J.R.R. Tolkien",
    "category_id": 1
}
```

**Auth:** Bearer Token

- **Delete Book**

```
DELETE /api/books/{id}
```

**Auth:** Bearer Token

</details>

<details>
<summary>🏷️ Categories</summary>

- **List All Categories**

```
GET /api/categories
```

**Auth:** Bearer Token

- **Create Category**

```
POST /api/categories
```

**Body:**
```json
{
    "name": "Fantasy"
}
```

**Auth:** Bearer Token

- **Get Category Details**

```
GET /api/categories/{id}
```

**Auth:** Bearer Token

- **Update Category**

```
PUT /api/categories/{id}
```

**Body:**
```json
{
    "name": "Science Fiction"
}
```

**Auth:** Bearer Token

- **Delete Category**

```
DELETE /api/categories/{id}
```

**Auth:** Bearer Token

</details>

## 🔮 Future Improvements

- Use Laravel Resources (BookResource, CategoryResource) for consistent API responses  
- Implement Policies or Gates for fine-grained permissions  
- Add PHPUnit tests for critical paths  
- Add Swagger/OpenAPI documentation

---

## Development👨🏻‍💻

```js
const developer = "DavidFernandez";

console.log("Developed by: " DavidFernandez);
```


## Contact📲
- **David Fernandez Valle**
  - [GitHub](https://github.com/Davfernandezz)
  - [Linkedin](https://www.linkedin.com/in/david-fern%C3%A1ndez-valle-1b4461300/?originalSubdomain=es)